(function () {
  var config = window.KanbanAppConsentConfig;
  var translations = window.KanbanAppConsentTranslations;
  var utils = window.KanbanAppConsentUtils;

  if (!config || !translations || !utils) return;

  var root = document.documentElement;
  var activeLocale = utils.normalizeLanguage(root.getAttribute("lang") || navigator.language || "en");
  var copy = translations[activeLocale] || translations.en;
  var privacyUrl = config.policyRoutes[activeLocale] || config.policyRoutes.en;

  var runtime = {
    currentRecord: utils.readStoredRecord(),
    currentPreferences: utils.normalizePreferences(config.defaultPreferences),
    loadedServices: {},
    configuredTags: {},
    gtagBootstrapDone: false,
    lastTrigger: null,
    ui: null
  };

  function interpolate(template) {
    return String(template)
      .replace(/\{privacyUrl\}/g, privacyUrl)
      .replace(/\{privacyLabel\}/g, copy.privacyLabel);
  }

  function setCookie(name, value, maxAgeSeconds) {
    try {
      document.cookie = name + "=" + encodeURIComponent(value) + "; path=/; max-age=" + maxAgeSeconds + "; SameSite=Lax";
    } catch (error) {}
  }

  function writeRecord(record) {
    var payload = JSON.stringify(record);
    try {
      localStorage.setItem(config.storageKey, payload);
    } catch (error) {}
    setCookie(config.cookieName, payload, config.cookieMaxAgeSeconds);
  }

  function buildRecord(preferences) {
    return {
      version: config.version,
      locale: activeLocale,
      updatedAt: new Date().toISOString(),
      preferences: utils.normalizePreferences(preferences)
    };
  }

  function getEnabledServiceIds() {
    var attribute = root.getAttribute("data-consent-services");
    if (!attribute) return [];
    return attribute.split(",")
      .map(function (value) { return value.trim(); })
      .filter(function (value, index, array) {
        return value && array.indexOf(value) === index;
      });
  }

  function injectScript(key, src, attributes) {
    if (runtime.loadedServices[key]) return runtime.loadedServices[key];

    var node = document.createElement("script");
    node.src = src;
    node.setAttribute("data-consent-managed", "true");
    node.setAttribute("data-consent-service", key);

    Object.keys(attributes || {}).forEach(function (name) {
      var value = attributes[name];
      if (value === true) {
        node[name] = true;
        node.setAttribute(name, "");
      } else if (value !== false && value != null) {
        node.setAttribute(name, String(value));
      }
    });

    document.head.appendChild(node);
    runtime.loadedServices[key] = node;
    return node;
  }

  function removeManagedService(serviceId) {
    var node = runtime.loadedServices[serviceId];
    if (node && node.parentNode) {
      node.parentNode.removeChild(node);
    }
    delete runtime.loadedServices[serviceId];
    delete runtime.configuredTags[serviceId];
  }

  function ensureGtagLibrary(tagId) {
    if (!tagId) return null;
    if (!runtime.loadedServices["google-gtag-lib"]) {
      injectScript("google-gtag-lib", "https://www.googletagmanager.com/gtag/js?id=" + encodeURIComponent(tagId), { async: true });
    }
    if (!runtime.gtagBootstrapDone) {
      window.gtag("js", new Date());
      runtime.gtagBootstrapDone = true;
    }
    return runtime.loadedServices["google-gtag-lib"];
  }

  function activateConfiguredServices(preferences) {
    getEnabledServiceIds().forEach(function (serviceId) {
      var service = config.services[serviceId];
      if (!service || !preferences[service.category]) return;

      if (service.kind === "script") {
        injectScript(serviceId, service.src, service.attributes || {});
        return;
      }

      if (service.kind === "gtag") {
        var tagId = root.getAttribute(service.dataAttribute || "");
        if (!tagId) return;
        ensureGtagLibrary(tagId);
        if (runtime.configuredTags[serviceId] === tagId) return;
        window.gtag("config", tagId, service.config || {});
        runtime.configuredTags[serviceId] = tagId;
      }
    });
  }

  function activateInlinePlaceholders(preferences) {
    var placeholders = document.querySelectorAll('script[type="text/plain"][data-consent-category]');

    for (var index = 0; index < placeholders.length; index += 1) {
      var placeholder = placeholders[index];
      var category = placeholder.getAttribute("data-consent-category");

      if (!preferences[category] || placeholder.getAttribute("data-consent-activated") === "true") continue;

      var script = document.createElement("script");
      var src = placeholder.getAttribute("data-consent-src");
      var id = placeholder.getAttribute("data-consent-script-id");
      if (id) script.id = id;

      script.setAttribute("data-consent-managed", "true");
      script.setAttribute("data-consent-category", category);

      var names = placeholder.getAttributeNames();
      for (var i = 0; i < names.length; i += 1) {
        var attrName = names[i];
        if (attrName.indexOf("data-script-attr-") === 0) {
          script.setAttribute(attrName.replace("data-script-attr-", ""), placeholder.getAttribute(attrName));
        }
      }

      if (src) {
        script.src = src;
      } else {
        script.text = placeholder.textContent;
      }

      placeholder.parentNode.insertBefore(script, placeholder.nextSibling);
      placeholder.setAttribute("data-consent-activated", "true");
    }
  }

  function cleanupGoogleAdsenseArtifacts() {
    var selectors = [
      ".google-auto-placed",
      "ins.adsbygoogle",
      'iframe[src*="googleads"]',
      'iframe[id*="google_ads_iframe"]',
      '[id^="google_ads_iframe"]',
      '[id^="aswift_"]'
    ];

    for (var i = 0; i < selectors.length; i += 1) {
      var nodes = document.querySelectorAll(selectors[i]);
      for (var j = 0; j < nodes.length; j += 1) {
        var node = nodes[j];
        if (node && node.parentNode) {
          node.parentNode.removeChild(node);
        }
      }
    }
  }

  function deactivateConfiguredServices(preferences) {
    Object.keys(config.services).forEach(function (serviceId) {
      var service = config.services[serviceId];
      if (!service || preferences[service.category]) return;

      if (service.kind === "script") {
        removeManagedService(serviceId);
      }

      if (service.cleanupKind === "google-adsense") {
        cleanupGoogleAdsenseArtifacts();
      }

      delete runtime.configuredTags[serviceId];
    });
  }

  function syncConsentMode(preferences) {
    window.gtag("consent", "update", utils.toConsentMode(preferences));
  }

  function emitConsentEvent(record) {
    document.dispatchEvent(new CustomEvent("kanbanapp:consent-updated", { detail: record }));
  }

  function updateStatus(message) {
    if (runtime.ui && runtime.ui.status) {
      runtime.ui.status.textContent = message || "";
    }
  }

  function syncForm(preferences) {
    if (!runtime.ui) return;
    runtime.ui.preferences.checked = !!preferences.preferences;
    runtime.ui.analytics.checked = !!preferences.analytics;
    runtime.ui.marketing.checked = !!preferences.marketing;
  }

  function closeModal() {
    if (!runtime.ui) return;
    runtime.ui.backdrop.setAttribute("hidden", "");
    runtime.ui.backdrop.setAttribute("aria-hidden", "true");
    document.body.classList.remove("ka-consent-modal-open");
    if (runtime.lastTrigger && typeof runtime.lastTrigger.focus === "function") {
      runtime.lastTrigger.focus();
    }
  }

  function openModal(trigger) {
    if (!runtime.ui) return;
    runtime.lastTrigger = trigger || document.activeElement;
    syncForm(runtime.currentPreferences);
    runtime.ui.backdrop.removeAttribute("hidden");
    runtime.ui.backdrop.setAttribute("aria-hidden", "false");
    document.body.classList.add("ka-consent-modal-open");
    runtime.ui.modalTitle.focus();
  }

  function hideBanner() {
    if (!runtime.ui) return;
    runtime.ui.banner.setAttribute("hidden", "");
    runtime.ui.banner.setAttribute("aria-hidden", "true");
  }

  function showBanner() {
    if (!runtime.ui) return;
    runtime.ui.banner.removeAttribute("hidden");
    runtime.ui.banner.setAttribute("aria-hidden", "false");
  }

  function persistPreferences(preferences, announce) {
    var normalized = utils.normalizePreferences(preferences);
    var record = buildRecord(normalized);

    runtime.currentPreferences = normalized;
    runtime.currentRecord = record;

    writeRecord(record);
    syncForm(normalized);
    hideBanner();
    closeModal();
    updateStatus(announce ? copy.savedMessage : "");

    try {
      syncConsentMode(normalized);
      deactivateConfiguredServices(normalized);
      activateConfiguredServices(normalized);
      activateInlinePlaceholders(normalized);
      emitConsentEvent(record);
    } catch (error) {
      if (window.console && typeof window.console.error === "function") {
        window.console.error("KanbanApp consent update failed.", error);
      }
    }
  }

  function createToggle(id, categoryKey, disabled) {
    var wrapper = document.createElement("div");
    wrapper.className = "ka-consent-category";

    var copyWrap = document.createElement("div");
    copyWrap.className = "ka-consent-category__copy";

    var title = document.createElement("h3");
    title.className = "ka-consent-category__title";
    title.textContent = copy.categories[categoryKey].title;

    var description = document.createElement("p");
    description.className = "ka-consent-category__description";
    description.textContent = copy.categories[categoryKey].description;

    copyWrap.appendChild(title);
    copyWrap.appendChild(description);

    var controlWrap = document.createElement("div");
    controlWrap.className = "ka-consent-category__control";

    if (disabled) {
      var badge = document.createElement("span");
      badge.className = "ka-consent-badge";
      badge.textContent = copy.alwaysActive;
      controlWrap.appendChild(badge);
    } else {
      var label = document.createElement("label");
      label.className = "ka-consent-switch";
      label.setAttribute("for", id);

      var input = document.createElement("input");
      input.type = "checkbox";
      input.id = id;
      input.className = "ka-consent-switch__input";

      var slider = document.createElement("span");
      slider.className = "ka-consent-switch__slider";
      slider.setAttribute("aria-hidden", "true");

      label.appendChild(input);
      label.appendChild(slider);
      controlWrap.appendChild(label);
    }

    wrapper.appendChild(copyWrap);
    wrapper.appendChild(controlWrap);
    return wrapper;
  }

  function createUi() {
    var banner = document.createElement("section");
    banner.className = "ka-consent-banner";
    banner.setAttribute("aria-label", copy.modalTitle);
    banner.setAttribute("hidden", "");
    banner.setAttribute("aria-hidden", "true");
    banner.innerHTML =
      '<div class="ka-consent-banner__copy">' +
      '<p class="ka-consent-banner__eyebrow">' + copy.bannerEyebrow + "</p>" +
      '<h2 class="ka-consent-banner__title">' + copy.bannerTitle + "</h2>" +
      '<p class="ka-consent-banner__description">' + interpolate(copy.bannerDescription) + "</p>" +
      "</div>" +
      '<div class="ka-consent-banner__actions">' +
      '<button class="ka-consent-button ka-consent-button--ghost" data-consent-action="reject" type="button">' + copy.rejectAll + "</button>" +
      '<button class="ka-consent-button ka-consent-button--secondary" data-consent-action="customize" type="button">' + copy.customize + "</button>" +
      '<button class="ka-consent-button ka-consent-button--primary" data-consent-action="accept" type="button">' + copy.acceptAll + "</button>" +
      "</div>";

    var backdrop = document.createElement("div");
    backdrop.className = "ka-consent-modal-backdrop";
    backdrop.setAttribute("hidden", "");
    backdrop.setAttribute("aria-hidden", "true");

    var modal = document.createElement("section");
    modal.className = "ka-consent-modal";
    modal.setAttribute("role", "dialog");
    modal.setAttribute("aria-modal", "true");
    modal.setAttribute("aria-labelledby", "ka-consent-modal-title");

    var header = document.createElement("div");
    header.className = "ka-consent-modal__header";
    header.innerHTML =
      '<div>' +
      '<h2 class="ka-consent-modal__title" id="ka-consent-modal-title" tabindex="-1">' + copy.modalTitle + "</h2>" +
      '<p class="ka-consent-modal__description">' + interpolate(copy.modalDescription) + "</p>" +
      "</div>" +
      '<button aria-label="' + copy.close + '" class="ka-consent-icon-button" data-consent-action="close" type="button">&times;</button>';

    var content = document.createElement("div");
    content.className = "ka-consent-modal__content";
    content.appendChild(createToggle("ka-consent-necessary", "necessary", true));
    content.appendChild(createToggle("ka-consent-preferences", "preferences", false));
    content.appendChild(createToggle("ka-consent-analytics", "analytics", false));
    content.appendChild(createToggle("ka-consent-marketing", "marketing", false));

    var footer = document.createElement("div");
    footer.className = "ka-consent-modal__footer";
    footer.innerHTML =
      '<div class="ka-consent-modal__footer-actions">' +
      '<button class="ka-consent-button ka-consent-button--ghost" data-consent-action="reject" type="button">' + copy.rejectAll + "</button>" +
      '<button class="ka-consent-button ka-consent-button--secondary" data-consent-action="accept" type="button">' + copy.acceptAll + "</button>" +
      '<button class="ka-consent-button ka-consent-button--primary" data-consent-action="save" type="button">' + copy.savePreferences + "</button>" +
      "</div>" +
      '<p class="ka-consent-status" aria-live="polite"></p>';

    modal.appendChild(header);
    modal.appendChild(content);
    modal.appendChild(footer);
    backdrop.appendChild(modal);

    document.body.appendChild(banner);
    document.body.appendChild(backdrop);

    var siteFooter = document.querySelector("footer");
    var footerTools = document.createElement("div");
    footerTools.className = "ka-consent-footer-tools";
    footerTools.innerHTML =
      '<button class="ka-consent-footer-button" type="button">' + copy.manage + "</button>" +
      '<a class="ka-consent-footer-link" href="' + privacyUrl + '">' + copy.privacyLabel + "</a>";

    if (siteFooter) {
      siteFooter.appendChild(footerTools);
    } else {
      document.body.appendChild(footerTools);
      footerTools.classList.add("ka-consent-footer-tools--floating");
    }

    return {
      banner: banner,
      backdrop: backdrop,
      modalTitle: modal.querySelector(".ka-consent-modal__title"),
      preferences: modal.querySelector("#ka-consent-preferences"),
      analytics: modal.querySelector("#ka-consent-analytics"),
      marketing: modal.querySelector("#ka-consent-marketing"),
      manageButton: footerTools.querySelector(".ka-consent-footer-button"),
      status: modal.querySelector(".ka-consent-status")
    };
  }

  function bindActions() {
    document.addEventListener("click", function (event) {
      var trigger = event.target.closest("[data-consent-action]");
      if (!trigger) return;

      var action = trigger.getAttribute("data-consent-action");

      if (action === "customize") {
        event.preventDefault();
        openModal(trigger);
        return;
      }

      if (action === "close") {
        event.preventDefault();
        closeModal();
        return;
      }

      if (action === "accept") {
        event.preventDefault();
        persistPreferences({ necessary: true, preferences: true, analytics: true, marketing: true }, true);
        return;
      }

      if (action === "reject") {
        event.preventDefault();
        persistPreferences({ necessary: true, preferences: false, analytics: false, marketing: false }, true);
        return;
      }

      if (action === "save") {
        event.preventDefault();
        persistPreferences({
          necessary: true,
          preferences: runtime.ui.preferences.checked,
          analytics: runtime.ui.analytics.checked,
          marketing: runtime.ui.marketing.checked
        }, true);
      }
    });

    runtime.ui.manageButton.addEventListener("click", function (event) {
      openModal(event.currentTarget);
    });

    runtime.ui.backdrop.addEventListener("click", function (event) {
      if (event.target === runtime.ui.backdrop) {
        closeModal();
      }
    });

    document.addEventListener("keydown", function (event) {
      if (event.key === "Escape" && !runtime.ui.backdrop.hidden) {
        closeModal();
      }
    });
  }

  function init() {
    runtime.ui = createUi();
    bindActions();

    var validRecord = utils.isRecordValid(runtime.currentRecord) ? runtime.currentRecord : null;

    if (validRecord) {
      runtime.currentPreferences = utils.normalizePreferences(validRecord.preferences);
      syncConsentMode(runtime.currentPreferences);
      activateConfiguredServices(runtime.currentPreferences);
      activateInlinePlaceholders(runtime.currentPreferences);
      syncForm(runtime.currentPreferences);
      hideBanner();
    } else {
      runtime.currentPreferences = utils.normalizePreferences(config.defaultPreferences);
      syncForm(runtime.currentPreferences);
      showBanner();
    }
  }

  init();
})();
