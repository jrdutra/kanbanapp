(function () {
  var defaultPreferences = {
    necessary: true,
    preferences: false,
    analytics: false,
    marketing: false
  };

  var config = {
    version: "2026-04-01",
    storageKey: "kanbanappCookieConsent",
    cookieName: "kanbanappCookieConsent",
    cookieMaxAgeSeconds: 31536000,
    policyRoutes: {
      en: "/privacy-policy/",
      "pt-BR": "/pt-br/politica-de-privacidade/",
      es: "/es/politica-de-privacidad/",
      ar: "/ar/siyasat-al-khusoosiya/",
      hi: "/hi/gopniyata-neeti/",
      "zh-CN": "/zh-cn/yin-si-zheng-ce/",
      fr: "/fr/politique-de-confidentialite/",
      de: "/de/datenschutzerklaerung/",
      id: "/id/kebijakan-privasi/"
    },
    defaultPreferences: defaultPreferences,
    services: {
      "google-adsense": {
        category: "marketing",
        kind: "script",
        src: "https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-5851652075835518",
        attributes: {
          async: true,
          crossorigin: "anonymous"
        },
        cleanupKind: "google-adsense"
      },
      "google-analytics": {
        category: "analytics",
        kind: "gtag",
        dataAttribute: "data-google-analytics-id",
        config: {
          anonymize_ip: true
        }
      },
      "google-ads": {
        category: "marketing",
        kind: "gtag",
        dataAttribute: "data-google-ads-id",
        config: {}
      }
    }
  };

  function normalizeLanguage(value) {
    if (!value) return "en";
    var lower = String(value).toLowerCase();
    if (lower.indexOf("pt") === 0) return "pt-BR";
    if (lower.indexOf("zh") === 0) return "zh-CN";
    if (lower.indexOf("es") === 0) return "es";
    if (lower.indexOf("ar") === 0) return "ar";
    if (lower.indexOf("hi") === 0) return "hi";
    if (lower.indexOf("fr") === 0) return "fr";
    if (lower.indexOf("de") === 0) return "de";
    if (lower.indexOf("id") === 0) return "id";
    return "en";
  }

  function normalizePreferences(input) {
    return {
      necessary: true,
      preferences: !!(input && input.preferences),
      analytics: !!(input && input.analytics),
      marketing: !!(input && input.marketing)
    };
  }

  function parseRecord(raw) {
    if (!raw) return null;
    try {
      return JSON.parse(raw);
    } catch (error) {
      return null;
    }
  }

  function readCookie(name) {
    try {
      var match = document.cookie.match(new RegExp("(^|; )" + name.replace(/[.*+?^${}()|[\]\\]/g, "\\$&") + "=([^;]*)"));
      return match ? decodeURIComponent(match[2]) : null;
    } catch (error) {
      return null;
    }
  }

  function readStoredRecord() {
    var record = null;

    try {
      record = parseRecord(localStorage.getItem(config.storageKey));
    } catch (error) {}

    if (!record) {
      record = parseRecord(readCookie(config.cookieName));
    }

    return record;
  }

  function isRecordValid(record) {
    if (!record || record.version !== config.version || !record.preferences) return false;
    var preferences = normalizePreferences(record.preferences);
    return typeof preferences.preferences === "boolean" &&
      typeof preferences.analytics === "boolean" &&
      typeof preferences.marketing === "boolean";
  }

  function toConsentMode(preferences) {
    var normalized = normalizePreferences(preferences);
    return {
      ad_storage: normalized.marketing ? "granted" : "denied",
      ad_user_data: normalized.marketing ? "granted" : "denied",
      ad_personalization: normalized.marketing ? "granted" : "denied",
      analytics_storage: normalized.analytics ? "granted" : "denied",
      functionality_storage: normalized.preferences ? "granted" : "denied",
      personalization_storage: normalized.preferences ? "granted" : "denied",
      security_storage: "granted"
    };
  }

  window.KanbanAppConsentConfig = config;
  window.KanbanAppConsentUtils = {
    normalizeLanguage: normalizeLanguage,
    normalizePreferences: normalizePreferences,
    readStoredRecord: readStoredRecord,
    isRecordValid: isRecordValid,
    toConsentMode: toConsentMode
  };

  window.dataLayer = window.dataLayer || [];
  window.gtag = window.gtag || function () {
    window.dataLayer.push(arguments);
  };

  var defaultState = toConsentMode(defaultPreferences);
  defaultState.wait_for_update = 500;
  window.gtag("consent", "default", defaultState);

  var storedRecord = readStoredRecord();
  if (isRecordValid(storedRecord)) {
    window.gtag("consent", "update", toConsentMode(storedRecord.preferences));
  }
})();
