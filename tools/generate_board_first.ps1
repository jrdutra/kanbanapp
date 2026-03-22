$ErrorActionPreference = 'Stop'

$root = 'c:\Users\joaor\ferramentas\kanbanapp'

$languages = @(
  @{
    Code = 'en'
    Template = "$root\what-is-kanban\index.html"
    NewDir = "$root\board-first-kanban"
    NewUrl = '/board-first-kanban/'
    HomeUrl = '/'
    PrivacyUrl = '/privacy-policy/'
    ContactUrl = '/contact/'
    WhatUrl = '/what-is-kanban/'
    MenuLabel = 'Board First Article'
    ArticleTitle = 'How I Reduced Forgetting at Work with Kanban and the "Board First" Mindset'
    Description = 'A practical article on using a Kanban board as the center of daily execution to reduce forgetfulness, stress, and mental overload at work.'
    Keywords = 'board first, kanban article, kanban board, reduce forgetfulness, work organization, visual management'
    NavLabel = 'Site menu'
    MenuTitle = 'Menu'
    MenuOpen = 'Open menu'
    LanguagesLabel = 'Languages'
    RelatedLabel = 'Related content'
    RelatedHome = 'Home'
    RelatedWhat = 'What is Kanban?'
    RelatedArticle = 'Board First article'
    Sections = @(
      @{ Title = 'Why I needed to change my routine'; Paragraphs = @(
        'There was a period in my professional routine when I started noticing something that gradually became worrying: I was forgetting important tasks during the day. It was not a lack of basic organization or lack of interest in the work. On the contrary, I was dealing with many activities at the same time, parallel demands, new details appearing constantly, and an increasingly heavy mental load.'
        'The real problem was that excess. To keep up with everything, I was carrying too much information in my head, mentally revisiting tasks, priorities, and pending items all day long. That created significant wear and tear. I felt tired not only because of the work itself, but because of the constant effort of trying to remember everything. That scenario increased stress and brought a recurring sense that something important might slip by unnoticed.'
        'That was when I decided to change how I organized my work.'
      ) }
      @{ Title = 'The decision to adopt a Kanban board'; Paragraphs = @(
        'Looking for a more efficient way to deal with daily complexity, I started using a Kanban board, specifically with kanbanapp.io. The initial idea was simple: take tasks out of my head and put them into a visual system.'
        'Over time, though, I realized that simply using a board was not enough. I needed discipline around it. That was when the idea I now use every day started to take shape: Board First.'
      ) }
      @{ Title = 'What "Board First" means'; Paragraphs = @(
        'Board First is a shift in mindset. Instead of using the board only as support, the board becomes the central point of work execution. It starts acting as the orchestrator of your activities.'
        'In practice, that means you stop depending on memory and start relying on a structured flow. Every decision about what to do, when to do it, and what to prioritize goes through the board. It stops being a passive record and becomes an active guide for the day.'
        'When I adopted that approach, something interesting happened: my mind became lighter. I no longer had to spend energy trying to remember what was missing because everything was already registered and visible. That freed mental space for what actually matters: doing good work.'
      ) }
      @{ Title = 'Handling everyday tasks and interruptions'; Paragraphs = @(
        'One of the biggest challenges at work is dealing with interruptions and unexpected tasks. They are part of the routine and cannot simply be ignored. The difference is in how you respond to them.'
        'With Board First, I started treating those situations more consciously. When a new task appears, there are three possible paths: if it is simple and can be finished immediately, I do it. If it can start now but will continue later, I register it on the board right away. If it cannot be done at that moment, it also goes directly to the board.'
        'That habit ensures that nothing gets lost. Even when the day becomes chaotic, there is still a reliable point of reference where everything is organized.'
        'Another important habit was always returning to the board after finishing any isolated activity. That prevents me from drifting into random tasks and keeps me aligned with what really needs to be delivered.'
      ) }
      @{ Title = 'Why keeping the board updated matters'; Paragraphs = @(
        'A board only works well when it is current. More important than marking what is done is making sure that everything that still needs to be done is properly registered and organized.'
        'Over time, I noticed that clarity about future work has a major impact on reducing anxiety. When you know exactly what you are responsible for, uncertainty goes down. And when uncertainty goes down, stress also goes down.'
        'That organization also gives a much more realistic view of workload. Instead of the vague feeling of being overloaded, you can see clearly what is actually in your hands.'
      ) }
      @{ Title = 'Kanban in practice: adapting it to reality'; Paragraphs = @(
        'Although the Kanban method has well-known concepts such as visualization, continuous flow, and limiting work in progress, the practical application should always respect the reality of each person or team.'
        'One important part of Board First is understanding that the board does not need to follow a rigid model. The classic columns "To Do", "Doing", and "Done" are only a starting reference. What matters is that the board structure makes sense in your context.'
        'The columns should reflect how work really happens. They can represent specific process steps, task states, or even situations such as waiting for someone else. When the board matches your reality, it becomes far more useful and intuitive.'
      ) }
      @{ Title = 'Prioritization and short-term visibility'; Paragraphs = @(
        'Another important benefit I found with kanbanapp.io was the ability to visualize priorities clearly. Having access to a view that highlights tasks closer to their deadlines adds an extra layer of organization.'
        'That visibility improves decision-making throughout the day. Instead of picking tasks randomly or reacting only to momentary urgency, you start acting on real priorities. That reduces rework, avoids delays, and keeps focus on what really must be delivered.'
      ) }
      @{ Title = 'The result of this change'; Paragraphs = @(
        'Adopting Board First changed the way I work in a meaningful way. I still have intense days with a high volume of activities, but the nature of the tiredness changed.'
        'Before, the exhaustion came from disorganization, from constantly trying to remember everything, and from the insecurity of forgetting something. Today, the tiredness is a consequence of productivity. It is the result of a well-executed day, with deliveries completed and the flow under control.'
        'My mind became freer, my focus improved, and my anxiety dropped significantly. And maybe the most important point is this: if something is not delivered, it is no longer because I forgot it. It is because of prioritization or lack of time, which is much more controllable and predictable.'
      ) }
      @{ Title = 'Conclusion'; Paragraphs = @(
        'Adopting a Kanban board is already an important step for any professional dealing with multiple tasks. But when you elevate that to the Board First mindset, the impact is much greater.'
        'You start working with more clarity, more control, and less dependence on memory. Your day gains structure, your flow improves, and your mind becomes available for what truly creates value.'
        'In the end, this is not only about organizing tasks. It is about organizing how you think and execute your work.'
        'That change makes a real difference.'
      ) }
    )
  }
  @{
    Code = 'pt-BR'
    Template = "$root\pt-br\o-que-e-kanban\index.html"
    NewDir = "$root\pt-br\board-first-kanban"
    NewUrl = '/pt-br/board-first-kanban/'
    HomeUrl = '/pt-br/'
    PrivacyUrl = '/pt-br/politica-de-privacidade/'
    ContactUrl = '/pt-br/contato/'
    WhatUrl = '/pt-br/o-que-e-kanban/'
    MenuLabel = 'Artigo Board First'
    ArticleTitle = 'Como reduzi meus esquecimentos no trabalho usando Kanban e o conceito de "Board First"'
    Description = 'Artigo prático sobre usar o board Kanban como centro da execução diária para reduzir esquecimentos, estresse e sobrecarga mental no trabalho.'
    Keywords = 'board first, artigo kanban, board kanban, reduzir esquecimentos, organização do trabalho, gestão visual'
    NavLabel = 'Menu do site'
    MenuTitle = 'Menu'
    MenuOpen = 'Abrir menu'
    LanguagesLabel = 'Idiomas'
    RelatedLabel = 'Conteúdo relacionado'
    RelatedHome = 'Início'
    RelatedWhat = 'O que é Kanban?'
    RelatedArticle = 'Artigo Board First'
    Sections = @(
      @{ Title = 'Por que eu precisei mudar minha rotina'; Paragraphs = @(
        'Houve um momento na minha rotina profissional em que comecei a perceber algo que, aos poucos, foi se tornando preocupante: eu estava esquecendo tarefas importantes no dia a dia. Não era falta de organização básica ou desinteresse pelo trabalho. Pelo contrário. Eu estava envolvido com muitas atividades ao mesmo tempo, lidando com demandas paralelas, novos detalhes surgindo constantemente e uma carga mental cada vez maior.'
        'O problema era justamente esse excesso. Para tentar dar conta de tudo, eu mantinha muitas informações na cabeça, revisitando mentalmente tarefas, prioridades e pendências ao longo do dia. Isso começou a gerar um desgaste significativo. Eu me sentia cansado não apenas pelo trabalho em si, mas pelo esforço contínuo de tentar lembrar de tudo. Esse cenário aumentava o estresse e trazia uma sensação constante de que algo poderia estar passando despercebido.'
        'Foi nesse contexto que decidi mudar a forma como eu organizava meu trabalho.'
      ) }
      @{ Title = 'A decisão de adotar um board Kanban'; Paragraphs = @(
        'Buscando uma forma mais eficiente de lidar com a complexidade do dia a dia, comecei a utilizar um board Kanban, especificamente com o kanbanapp.io. A proposta inicial era simples: tirar as tarefas da cabeça e colocá-las em um sistema visual.'
        'Mas com o tempo, percebi que apenas usar um quadro não era suficiente. Era necessário desenvolver uma disciplina em torno dele. Foi então que surgiu o conceito que passei a aplicar no meu dia a dia: o Board First.'
      ) }
      @{ Title = 'O que significa "Board First"'; Paragraphs = @(
        'O conceito de Board First representa uma mudança de mentalidade. Em vez de usar o board apenas como apoio, ele passa a ser o ponto central da execução do trabalho. É como se ele assumisse o papel de orquestrador das suas atividades.'
        'Na prática, isso significa que você deixa de depender da memória e passa a confiar em um fluxo estruturado. Toda decisão sobre o que fazer, quando fazer e o que priorizar passa pelo board. Ele deixa de ser um registro passivo e se torna um guia ativo do seu dia.'
        'Ao adotar essa abordagem, algo interessante acontece: a mente começa a ficar mais leve. Você não precisa mais gastar energia tentando lembrar o que falta, porque tudo já está registrado e visível. Isso libera espaço mental para aquilo que realmente importa: executar bem o trabalho.'
      ) }
      @{ Title = 'Lidando com tarefas e interrupções do dia a dia'; Paragraphs = @(
        'Um dos maiores desafios no ambiente de trabalho é lidar com as interrupções e tarefas inesperadas. Elas fazem parte da rotina e não podem ser ignoradas. O diferencial está na forma como você reage a elas.'
        'Com o conceito de Board First, passei a tratar essas situações de forma mais consciente. Quando uma nova tarefa surge, existem três caminhos possíveis: se for algo simples e que pode ser resolvido completamente naquele momento, eu resolvo. Se for algo que pode até começar agora, mas vai gerar continuidade depois, eu já registro no board. E, se não puder ser feito naquele momento, também vai diretamente para o board.'
        'Essa prática garante que nada se perca. Mesmo quando o dia fica caótico, existe um ponto de referência confiável onde tudo está organizado.'
        'Outro hábito importante que desenvolvi foi sempre retornar ao board após concluir qualquer atividade pontual. Isso evita que eu entre em um fluxo desorganizado de tarefas aleatórias e me mantém alinhado com o que realmente precisa ser entregue.'
      ) }
      @{ Title = 'A importância de manter o board atualizado'; Paragraphs = @(
        'Um board só funciona bem quando está atualizado. Mais importante do que marcar o que já foi feito é garantir que tudo o que ainda precisa ser feito esteja devidamente registrado e organizado.'
        'Com o tempo, percebi que a clareza sobre o trabalho futuro é o que mais impacta na redução da ansiedade. Quando você sabe exatamente o que está na sua responsabilidade, o nível de incerteza diminui. E quando a incerteza diminui, o estresse também reduz.'
        'Essa organização também traz uma visão muito mais realista do volume de trabalho. Você deixa de ter aquela sensação abstrata de estar cheio de coisas e passa a enxergar concretamente o que está na sua mão.'
      ) }
      @{ Title = 'Kanban na prática: adaptação à realidade'; Paragraphs = @(
        'Embora o método Kanban tenha conceitos bem conhecidos, como visualização do trabalho, fluxo contínuo e limitação de tarefas em andamento, a aplicação prática deve sempre respeitar a realidade de cada pessoa ou equipe.'
        'Um ponto importante dentro do conceito de Board First é entender que o board não precisa seguir um modelo engessado. As clássicas colunas "To Do", "Doing" e "Done" são apenas uma referência inicial. O mais importante é que a estrutura do board faça sentido para o seu contexto.'
        'As colunas devem refletir como o seu trabalho realmente acontece. Elas podem representar etapas específicas do seu processo, estados de uma tarefa ou até situações como dependência de terceiros. Quando o board conversa com a sua realidade, ele se torna muito mais útil e intuitivo.'
      ) }
      @{ Title = 'Priorização e visão de curto prazo'; Paragraphs = @(
        'Outro benefício importante que encontrei ao utilizar o kanbanapp.io foi a possibilidade de visualizar prioridades de forma clara. Ter acesso a uma visão que destaca tarefas mais próximas do prazo traz uma camada adicional de organização.'
        'Essa visibilidade facilita a tomada de decisão ao longo do dia. Em vez de escolher tarefas de forma aleatória ou baseada em urgências momentâneas, você passa a agir com base em prioridades reais. Isso reduz retrabalho, evita atrasos e mantém o foco no que realmente precisa ser entregue.'
      ) }
      @{ Title = 'O resultado dessa mudança'; Paragraphs = @(
        'A adoção do Board First trouxe uma transformação significativa na minha forma de trabalhar. Eu continuo tendo dias intensos, com bastante volume de atividades, mas a natureza do cansaço mudou.'
        'Antes, o desgaste vinha da desorganização, da tentativa constante de lembrar de tudo e da insegurança de estar esquecendo algo. Hoje, o cansaço é consequência da produtividade. É o resultado de um dia bem executado, com entregas realizadas e fluxo controlado.'
        'Minha mente ficou mais livre, meu foco melhorou e a ansiedade diminuiu consideravelmente. E talvez o ponto mais importante: se algo deixa de ser entregue, não é mais por esquecimento. É por priorização ou falta de tempo, o que é muito mais controlável e previsível.'
      ) }
      @{ Title = 'Conclusão'; Paragraphs = @(
        'Adotar um board Kanban já é um passo importante para qualquer profissional que lida com múltiplas tarefas. Mas quando você eleva isso para o conceito de Board First, o impacto é muito maior.'
        'Você passa a trabalhar com mais clareza, mais controle e menos dependência da memória. Seu dia ganha estrutura, seu fluxo melhora e sua mente fica disponível para aquilo que realmente gera valor.'
        'No fim das contas, não se trata apenas de organizar tarefas. Trata-se de organizar a forma como você pensa e executa o seu trabalho.'
        'E essa mudança faz toda a diferença.'
      ) }
    )
  }
  @{
    Code = 'es'
    Template = "$root\es\que-es-kanban\index.html"
    NewDir = "$root\es\board-first-kanban"
    NewUrl = '/es/board-first-kanban/'
    HomeUrl = '/es/'
    PrivacyUrl = '/es/politica-de-privacidad/'
    ContactUrl = '/es/contacto/'
    WhatUrl = '/es/que-es-kanban/'
    MenuLabel = 'Artículo Board First'
    ArticleTitle = 'Cómo reduje mis olvidos en el trabajo usando Kanban y el concepto de "Board First"'
    Description = 'Artículo práctico sobre usar el tablero Kanban como centro de la ejecución diaria para reducir olvidos, estrés y sobrecarga mental en el trabajo.'
    Keywords = 'board first, artículo kanban, tablero kanban, reducir olvidos, organización del trabajo, gestión visual'
    NavLabel = 'Menú del sitio'
    MenuTitle = 'Menú'
    MenuOpen = 'Abrir menú'
    LanguagesLabel = 'Idiomas'
    RelatedLabel = 'Contenido relacionado'
    RelatedHome = 'Inicio'
    RelatedWhat = '¿Qué es Kanban?'
    RelatedArticle = 'Artículo Board First'
    Sections = @(
      @{ Title = 'Por qué necesité cambiar mi rutina'; Paragraphs = @(
        'Hubo un momento en mi rutina profesional en el que empecé a notar algo que, poco a poco, se volvió preocupante: estaba olvidando tareas importantes en el día a día. No era falta de organización básica ni desinterés por el trabajo. Al contrario. Estaba involucrado en muchas actividades al mismo tiempo, atendiendo demandas paralelas, con nuevos detalles apareciendo constantemente y una carga mental cada vez mayor.'
        'El problema era precisamente ese exceso. Para intentar abarcarlo todo, mantenía demasiada información en la cabeza, repasando mentalmente tareas, prioridades y pendientes durante el día. Eso empezó a generar un desgaste significativo. Me sentía cansado no solo por el trabajo en sí, sino por el esfuerzo continuo de intentar recordarlo todo. Ese escenario aumentaba el estrés y traía una sensación constante de que algo importante podía pasar desapercibido.'
        'Fue en ese contexto cuando decidí cambiar la forma en que organizaba mi trabajo.'
      ) }
      @{ Title = 'La decisión de adoptar un tablero Kanban'; Paragraphs = @(
        'Buscando una forma más eficiente de manejar la complejidad del día a día, empecé a usar un tablero Kanban, concretamente con kanbanapp.io. La propuesta inicial era simple: sacar las tareas de la cabeza y llevarlas a un sistema visual.'
        'Pero con el tiempo me di cuenta de que usar un tablero, por sí solo, no era suficiente. Hacía falta desarrollar disciplina alrededor de él. Ahí fue cuando surgió el concepto que pasé a aplicar en mi rutina: Board First.'
      ) }
      @{ Title = 'Qué significa "Board First"'; Paragraphs = @(
        'Board First representa un cambio de mentalidad. En vez de usar el tablero solo como apoyo, el tablero pasa a ser el punto central de la ejecución del trabajo. Asume el papel de orquestador de tus actividades.'
        'En la práctica, eso significa dejar de depender de la memoria y pasar a confiar en un flujo estructurado. Toda decisión sobre qué hacer, cuándo hacerlo y qué priorizar pasa por el tablero. Deja de ser un registro pasivo y se convierte en una guía activa para tu día.'
        'Cuando adopté este enfoque ocurrió algo interesante: la mente empezó a sentirse más liviana. Ya no necesitaba gastar energía intentando recordar lo que faltaba, porque todo estaba registrado y visible. Eso liberó espacio mental para lo que realmente importa: ejecutar bien el trabajo.'
      ) }
      @{ Title = 'Cómo manejar tareas e interrupciones diarias'; Paragraphs = @(
        'Uno de los mayores desafíos en el entorno laboral es lidiar con interrupciones y tareas inesperadas. Forman parte de la rutina y no se pueden ignorar. La diferencia está en cómo reaccionas ante ellas.'
        'Con Board First empecé a tratar esas situaciones de una forma más consciente. Cuando surge una nueva tarea, hay tres caminos posibles: si es algo simple que puedo resolver por completo en ese momento, lo hago. Si puede empezar ahora pero tendrá continuidad después, la registro enseguida en el tablero. Y si no puede hacerse en ese momento, también va directamente al tablero.'
        'Esa práctica garantiza que nada se pierda. Incluso cuando el día se vuelve caótico, existe un punto de referencia confiable donde todo está organizado.'
      ) }
      @{ Title = 'La importancia de mantener el tablero actualizado'; Paragraphs = @(
        'Un tablero solo funciona bien cuando está actualizado. Más importante que marcar lo que ya se hizo es garantizar que todo lo que aún debe hacerse esté debidamente registrado y organizado.'
        'Con el tiempo percibí que la claridad sobre el trabajo futuro es lo que más impacta en la reducción de la ansiedad. Cuando sabes exactamente qué está bajo tu responsabilidad, el nivel de incertidumbre baja. Y cuando la incertidumbre baja, el estrés también disminuye.'
      ) }
      @{ Title = 'Kanban en la práctica: adaptación a la realidad'; Paragraphs = @(
        'Aunque el método Kanban tiene conceptos bien conocidos, como visualización del trabajo, flujo continuo y limitación del trabajo en curso, la aplicación práctica siempre debe respetar la realidad de cada persona o equipo.'
        'Las clásicas columnas "To Do", "Doing" y "Done" son solo una referencia inicial. Lo importante es que la estructura del tablero tenga sentido para tu contexto y refleje cómo el trabajo sucede de verdad.'
      ) }
      @{ Title = 'Priorización y visión de corto plazo'; Paragraphs = @(
        'Otro beneficio importante que encontré al usar kanbanapp.io fue la posibilidad de visualizar prioridades con claridad. Tener acceso a una vista que destaca las tareas más cercanas a su plazo añade una capa extra de organización.'
        'Eso facilita la toma de decisiones durante el día. En vez de elegir tareas al azar o guiado solo por urgencias momentáneas, pasas a actuar según prioridades reales.'
      ) }
      @{ Title = 'El resultado de este cambio'; Paragraphs = @(
        'La adopción de Board First trajo una transformación significativa en mi forma de trabajar. Sigo teniendo días intensos y con mucho volumen, pero la naturaleza del cansancio cambió.'
        'Antes, el desgaste venía de la desorganización, del intento constante de recordarlo todo y de la inseguridad de estar olvidando algo. Hoy, el cansancio es consecuencia de la productividad: un día bien ejecutado, con entregas realizadas y flujo controlado.'
        'Mi mente quedó más libre, mi foco mejoró y la ansiedad disminuyó de forma considerable.'
      ) }
      @{ Title = 'Conclusión'; Paragraphs = @(
        'Adoptar un tablero Kanban ya es un paso importante para cualquier profesional que maneja múltiples tareas. Pero cuando elevas eso al concepto de Board First, el impacto es mucho mayor.'
        'Empiezas a trabajar con más claridad, más control y menos dependencia de la memoria. Al final, no se trata solo de organizar tareas, sino de organizar la forma en que piensas y ejecutas tu trabajo.'
      ) }
    )
  }
  @{
    Code = 'fr'
    Template = "$root\fr\qu-est-ce-que-kanban\index.html"
    NewDir = "$root\fr\board-first-kanban"
    NewUrl = '/fr/board-first-kanban/'
    HomeUrl = '/fr/'
    PrivacyUrl = '/fr/politique-de-confidentialite/'
    ContactUrl = '/fr/contact/'
    WhatUrl = '/fr/qu-est-ce-que-kanban/'
    MenuLabel = 'Article Board First'
    ArticleTitle = 'Comment j ai réduit mes oublis au travail avec Kanban et le concept de "Board First"'
    Description = 'Article pratique sur usage du tableau Kanban comme centre de exécution quotidienne pour réduire les oublis, le stress et la surcharge mentale au travail.'
    Keywords = 'board first, article kanban, tableau kanban, réduire les oublis, organisation du travail, gestion visuelle'
    NavLabel = 'Menu du site'
    MenuTitle = 'Menu'
    MenuOpen = 'Ouvrir le menu'
    LanguagesLabel = 'Langues'
    RelatedLabel = 'Contenu connexe'
    RelatedHome = 'Accueil'
    RelatedWhat = 'Qu est-ce que Kanban ?'
    RelatedArticle = 'Article Board First'
    Sections = @(
      @{ Title = 'Pourquoi je ai dû changer ma routine'; Paragraphs = @(
        'Il y a eu un moment dans ma routine professionnelle où je ai commencé à remarquer quelque chose qui, peu à peu, est devenu préoccupant : je oubliais des tâches importantes au quotidien. Ce n était ni un manque d organisation de base, ni un manque d intérêt pour le travail. Au contraire. Je étais impliqué dans de nombreuses activités en même temps, avec des demandes parallèles, de nouveaux détails qui apparaissaient sans cesse et une charge mentale de plus en plus lourde.'
        'Le vrai problème était justement cet excès. Pour essayer de tout gérer, je gardais trop d informations en tête, en repassant mentalement tâches, priorités et sujets en attente tout au long de la journée. Cela a commencé à générer une usure importante. Je me sentais fatigué non seulement par le travail lui-même, mais aussi par effort continu nécessaire pour essayer de tout retenir.'
      ) }
      @{ Title = 'La décision de adopter un tableau Kanban'; Paragraphs = @(
        'En cherchant une manière plus efficace de gérer la complexité du quotidien, je ai commencé à utiliser un tableau Kanban, plus précisément avec kanbanapp.io. L idée de départ était simple : sortir les tâches de ma tête et les placer dans un système visuel.'
        'Avec le temps, je ai compris que utiliser un tableau ne suffisait pas. Il fallait développer une discipline autour de lui. C est ainsi que est né le concept que je ai commencé à appliquer au quotidien : Board First.'
      ) }
      @{ Title = 'Que signifie "Board First"'; Paragraphs = @(
        'Board First représente un changement de manière de penser. Au lieu de utiliser le tableau comme simple support, il devient le point central de exécution du travail.'
        'Concrètement, cela signifie que vous cessez de dépendre de votre mémoire pour vous appuyer sur un flux structuré. Chaque décision sur ce qu il faut faire, quand le faire et ce qu il faut prioriser passe par le tableau.'
      ) }
      @{ Title = 'Gérer les tâches et interruptions du quotidien'; Paragraphs = @(
        'Un des plus grands défis au travail consiste à gérer les interruptions et les tâches imprévues. Elles font partie de la routine et ne peuvent pas être ignorées.'
        'Lorsqu une nouvelle tâche apparaît, trois chemins sont possibles : si elle peut être résolue immédiatement, je la fais. Si elle demande une suite plus tard, je la enregistre tout de suite dans le tableau. Si elle ne peut pas être faite sur le moment, elle va également directement dans le tableau.'
      ) }
      @{ Title = 'Importance de garder le tableau à jour'; Paragraphs = @(
        'Un tableau ne fonctionne bien que lorsqu il est à jour. Plus important que marquer ce qui est déjà terminé, il faut assurer que tout ce qui reste à faire est correctement enregistré et organisé.'
        'Avec le temps, je ai remarqué que la clarté sur le travail à venir réduit fortement anxiété et donne une vision plus réaliste du volume de travail.'
      ) }
      @{ Title = 'Kanban en pratique : adaptation à la réalité'; Paragraphs = @(
        'Même si la méthode Kanban repose sur des concepts connus comme la visualisation du travail, le flux continu et la limitation du travail en cours, son application pratique doit toujours respecter la réalité de chaque personne ou équipe.'
        'Les colonnes classiques "To Do", "Doing" et "Done" ne sont qu une référence de départ. Essentiel est que la structure du tableau ait du sens dans votre contexte réel.'
      ) }
      @{ Title = 'Priorisation et vision à court terme'; Paragraphs = @(
        'Un autre bénéfice important trouvé avec kanbanapp.io est la capacité à visualiser clairement les priorités. Une vue qui met en évidence les tâches proches de leur échéance aide beaucoup à décider quoi faire ensuite.'
      ) }
      @{ Title = 'Le résultat de ce changement'; Paragraphs = @(
        'Adoption de Board First a profondément transformé ma façon de travailler. Je ai toujours des journées intenses, mais la nature de la fatigue a changé.'
        'Aujourd hui, la fatigue vient davantage de une journée productive et bien exécutée que du désordre ou de oubli.'
      ) }
      @{ Title = 'Conclusion'; Paragraphs = @(
        'Adopter un tableau Kanban est déjà une étape importante. Mais lorsque on va plus loin avec le concept de Board First, impact devient beaucoup plus grand.'
        'Au final, il ne agit pas seulement de organiser des tâches. Il agit de organiser la manière dont on pense et exécute son travail.'
      ) }
    )
  }
  @{
    Code = 'de'
    Template = "$root\de\was-ist-kanban\index.html"
    NewDir = "$root\de\board-first-kanban"
    NewUrl = '/de/board-first-kanban/'
    HomeUrl = '/de/'
    PrivacyUrl = '/de/datenschutzerklaerung/'
    ContactUrl = '/de/kontakt/'
    WhatUrl = '/de/was-ist-kanban/'
    MenuLabel = 'Board-First-Artikel'
    ArticleTitle = 'Wie ich meine Vergesslichkeit bei der Arbeit mit Kanban und dem Konzept "Board First" reduziert habe'
    Description = 'Praxisartikel darüber, wie ein Kanban-Board als Zentrum der täglichen Ausführung hilft, Vergesslichkeit, Stress und mentale Überlastung bei der Arbeit zu reduzieren.'
    Keywords = 'board first, kanban artikel, kanban board, weniger vergessen, arbeitsorganisation, visuelles management'
    NavLabel = 'Website-Menü'
    MenuTitle = 'Menü'
    MenuOpen = 'Menü öffnen'
    LanguagesLabel = 'Sprachen'
    RelatedLabel = 'Verwandte Inhalte'
    RelatedHome = 'Startseite'
    RelatedWhat = 'Was ist Kanban?'
    RelatedArticle = 'Board-First-Artikel'
    Sections = @(
      @{ Title = 'Warum ich meine Routine ändern musste'; Paragraphs = @(
        'Es gab einen Zeitpunkt in meinem Berufsalltag, an dem ich etwas bemerkte, das nach und nach besorgniserregend wurde: Ich vergaß wichtige Aufgaben im Tagesgeschäft. Es lag weder an mangelnder Grundorganisation noch an fehlendem Interesse an der Arbeit. Im Gegenteil. Ich war gleichzeitig mit vielen Aktivitäten beschäftigt, hatte parallele Anforderungen, ständig neue Details und eine immer höhere mentale Belastung.'
        'Um alles im Blick zu behalten, trug ich zu viele Informationen im Kopf mit mir herum und ging Aufgaben, Prioritäten und offene Punkte den ganzen Tag mental immer wieder durch. Das führte zu spürbarer Erschöpfung.'
      ) }
      @{ Title = 'Die Entscheidung für ein Kanban-Board'; Paragraphs = @(
        'Auf der Suche nach einer effizienteren Art, mit der täglichen Komplexität umzugehen, begann ich ein Kanban-Board mit kanbanapp.io zu nutzen.'
        'Mit der Zeit merkte ich jedoch, dass ein Board allein nicht ausreicht. Es brauchte Disziplin darum herum. Genau so entstand das Konzept Board First.'
      ) }
      @{ Title = 'Was "Board First" bedeutet'; Paragraphs = @(
        'Board First steht für einen Mentalitätswechsel. Statt das Board nur als Unterstützung zu nutzen, wird es zum zentralen Punkt der Arbeitsausführung.'
        'Jede Entscheidung darüber, was zu tun ist, wann es zu tun ist und was Priorität hat, läuft über das Board. Es ist nicht länger ein passives Register, sondern ein aktiver Leitfaden für den Tag.'
      ) }
      @{ Title = 'Umgang mit täglichen Aufgaben und Unterbrechungen'; Paragraphs = @(
        'Unterbrechungen und unerwartete Aufgaben gehören zum Alltag. Der Unterschied liegt darin, wie man auf sie reagiert.'
        'Ist eine neue Aufgabe einfach und sofort lösbar, erledige ich sie direkt. Braucht sie Fortsetzung, trage ich sie sofort ins Board ein. Wenn sie im Moment nicht bearbeitet werden kann, landet sie ebenfalls direkt im Board.'
      ) }
      @{ Title = 'Warum ein aktuelles Board entscheidend ist'; Paragraphs = @(
        'Ein Board funktioniert nur dann gut, wenn es aktuell ist. Wichtiger als zu markieren, was erledigt wurde, ist sicherzustellen, dass alles, was noch offen ist, korrekt erfasst wurde.'
        'Mit mehr Klarheit über die anstehende Arbeit sinken Unsicherheit und Stress. Gleichzeitig entsteht eine realistischere Sicht auf das tatsächliche Arbeitsvolumen.'
      ) }
      @{ Title = 'Kanban in der Praxis'; Paragraphs = @(
        'Die bekannten Kanban-Konzepte wie Visualisierung, kontinuierlicher Fluss und Begrenzung paralleler Arbeit müssen immer an die Realität des Teams oder der Person angepasst werden.'
        'Die klassischen Spalten "To Do", "Doing" und "Done" sind nur ein Ausgangspunkt. Entscheidend ist, dass die Struktur des Boards zum tatsächlichen Arbeitsablauf passt.'
      ) }
      @{ Title = 'Priorisierung und kurzfristige Sicht'; Paragraphs = @(
        'Ein wichtiger Vorteil von kanbanapp.io ist die klare Sicht auf Prioritäten. So wird es leichter, im Alltag auf Basis realer Dringlichkeit und echter Liefererfordernisse zu entscheiden.'
      ) }
      @{ Title = 'Das Ergebnis dieser Veränderung'; Paragraphs = @(
        'Board First hat meine Arbeitsweise deutlich verändert. Die Müdigkeit kommt heute weniger aus Unordnung und Vergesslichkeit, sondern eher aus einem produktiven und gut ausgeführten Tag.'
      ) }
      @{ Title = 'Fazit'; Paragraphs = @(
        'Ein Kanban-Board einzuführen ist bereits ein wichtiger Schritt. Mit dem Prinzip Board First wird die Wirkung jedoch deutlich größer.'
        'Am Ende geht es nicht nur darum, Aufgaben zu organisieren, sondern auch die Art zu organisieren, wie man denkt und arbeitet.'
      ) }
    )
  }
  @{
    Code = 'id'
    Template = "$root\id\apa-itu-kanban\index.html"
    NewDir = "$root\id\board-first-kanban"
    NewUrl = '/id/board-first-kanban/'
    HomeUrl = '/id/'
    PrivacyUrl = '/id/kebijakan-privasi/'
    ContactUrl = '/id/kontak/'
    WhatUrl = '/id/apa-itu-kanban/'
    MenuLabel = 'Artikel Board First'
    ArticleTitle = 'Bagaimana saya mengurangi kelupaan saat bekerja dengan Kanban dan konsep "Board First"'
    Description = 'Artikel praktis tentang menggunakan papan Kanban sebagai pusat eksekusi harian untuk mengurangi kelupaan, stres, dan beban mental di tempat kerja.'
    Keywords = 'board first, artikel kanban, papan kanban, mengurangi lupa, organisasi kerja, manajemen visual'
    NavLabel = 'Menu situs'
    MenuTitle = 'Menu'
    MenuOpen = 'Buka menu'
    LanguagesLabel = 'Bahasa'
    RelatedLabel = 'Konten terkait'
    RelatedHome = 'Beranda'
    RelatedWhat = 'Apa itu Kanban?'
    RelatedArticle = 'Artikel Board First'
    Sections = @(
      @{ Title = 'Mengapa saya perlu mengubah rutinitas'; Paragraphs = @(
        'Ada masa ketika saya mulai menyadari sesuatu yang mengkhawatirkan: saya mulai melupakan tugas-tugas penting dalam keseharian kerja.'
        'Masalah utamanya adalah terlalu banyak informasi yang saya simpan di kepala. Itu menambah stres dan membuat saya lelah bukan hanya karena pekerjaan, tetapi karena terus mencoba mengingat semuanya.'
      ) }
      @{ Title = 'Keputusan untuk mengadopsi papan Kanban'; Paragraphs = @(
        'Saya lalu mulai menggunakan papan Kanban di kanbanapp.io untuk memindahkan tugas dari kepala ke sistem visual.'
        'Namun saya segera sadar bahwa papan saja tidak cukup. Saya perlu menjadikannya pusat cara saya bekerja. Di situlah konsep Board First muncul.'
      ) }
      @{ Title = 'Apa arti "Board First"'; Paragraphs = @(
        'Board First berarti papan menjadi titik pusat eksekusi pekerjaan, bukan hanya alat bantu.'
        'Setiap keputusan tentang apa yang dikerjakan, kapan dikerjakan, dan apa yang diprioritaskan lewat papan. Ini membuat pikiran terasa lebih ringan karena semuanya sudah tercatat dan terlihat.'
      ) }
      @{ Title = 'Menghadapi tugas dan interupsi sehari-hari'; Paragraphs = @(
        'Saat tugas baru muncul, saya memakai tiga jalur: kerjakan langsung jika sederhana, catat di papan jika perlu dilanjutkan nanti, dan catat juga jika belum bisa dikerjakan sekarang.'
        'Kebiasaan ini memastikan tidak ada yang hilang, bahkan ketika hari terasa kacau.'
      ) }
      @{ Title = 'Pentingnya menjaga papan tetap diperbarui'; Paragraphs = @(
        'Papan hanya berguna jika selalu diperbarui. Yang penting bukan hanya menandai apa yang selesai, tetapi memastikan semua pekerjaan yang masih harus dilakukan benar-benar tercatat.'
      ) }
      @{ Title = 'Kanban dalam praktik'; Paragraphs = @(
        'Struktur papan tidak harus kaku. Kolom-kolomnya harus sesuai dengan kenyataan kerja Anda, bukan hanya meniru model umum.'
      ) }
      @{ Title = 'Prioritas dan visibilitas jangka pendek'; Paragraphs = @(
        'Dengan visibilitas yang lebih jelas terhadap prioritas, keputusan harian menjadi lebih baik dan risiko pekerjaan ulang atau keterlambatan menurun.'
      ) }
      @{ Title = 'Hasil dari perubahan ini'; Paragraphs = @(
        'Setelah menerapkan Board First, saya tetap sibuk, tetapi kelelahan saya berubah. Sekarang lebih banyak datang dari produktivitas daripada dari kekacauan mental.'
      ) }
      @{ Title = 'Kesimpulan'; Paragraphs = @(
        'Mengadopsi papan Kanban sudah penting. Menjadikannya sebagai prinsip Board First membuat dampaknya jauh lebih besar.'
      ) }
    )
  }
  @{
    Code = 'hi'
    Template = "$root\hi\kanban-kya-hai\index.html"
    NewDir = "$root\hi\board-first-kanban"
    NewUrl = '/hi/board-first-kanban/'
    HomeUrl = '/hi/'
    PrivacyUrl = '/hi/gopniyata-neeti/'
    ContactUrl = '/hi/sampark/'
    WhatUrl = '/hi/kanban-kya-hai/'
    MenuLabel = 'बोर्ड फर्स्ट लेख'
    ArticleTitle = 'मैंने Kanban और "Board First" के साथ काम में भूलना कैसे कम किया'
    Description = 'काम में भूल, तनाव और मानसिक बोझ कम करने के लिए Kanban बोर्ड को दैनिक निष्पादन के केंद्र के रूप में इस्तेमाल करने पर व्यावहारिक लेख।'
    Keywords = 'board first, kanban लेख, kanban बोर्ड, भूल कम करना, काम का संगठन, visual management'
    NavLabel = 'साइट मेनू'
    MenuTitle = 'मेनू'
    MenuOpen = 'मेनू खोलें'
    LanguagesLabel = 'भाषाएँ'
    RelatedLabel = 'संबंधित सामग्री'
    RelatedHome = 'होम'
    RelatedWhat = 'कानबन क्या है?'
    RelatedArticle = 'बोर्ड फर्स्ट लेख'
    Sections = @(
      @{ Title = 'मुझे अपनी दिनचर्या क्यों बदलनी पड़ी'; Paragraphs = @(
        'एक समय ऐसा आया जब मैंने महसूस किया कि मैं काम में महत्वपूर्ण चीज़ें भूलने लगा हूँ। यह रुचि की कमी नहीं थी, बल्कि बहुत सारी समानांतर जिम्मेदारियों और बढ़ते मानसिक बोझ का परिणाम था।'
        'सब कुछ दिमाग में रखने की कोशिश मुझे थका रही थी। यही वह क्षण था जब मैंने अपनी कार्य-प्रणाली बदलने का निर्णय लिया।'
      ) }
      @{ Title = 'Kanban बोर्ड अपनाने का निर्णय'; Paragraphs = @(
        'मैंने कामों को दिमाग से निकालकर एक दृश्य प्रणाली में रखने के लिए kanbanapp.io पर Kanban बोर्ड का उपयोग शुरू किया।'
        'फिर मुझे समझ आया कि केवल बोर्ड होना काफी नहीं है। बोर्ड को ही काम का केंद्र बनाना होगा. वहीं से Board First की शुरुआत हुई।'
      ) }
      @{ Title = '"Board First" का अर्थ'; Paragraphs = @(
        'Board First का मतलब है कि बोर्ड केवल सहायक साधन नहीं, बल्कि कार्य निष्पादन का केंद्रीय बिंदु बन जाता है।'
        'क्या करना है, कब करना है और किसे प्राथमिकता देनी है, यह सब बोर्ड के माध्यम से तय होता है। इससे दिमाग हल्का होता है और ध्यान असली काम पर जाता है।'
      ) }
      @{ Title = 'दैनिक कार्यों और व्यवधानों से निपटना'; Paragraphs = @(
        'नया काम आने पर मैं तीन नियम अपनाता हूँ: अगर तुरंत पूरा हो सकता है तो वहीं कर देता हूँ; अगर आगे जारी रहेगा तो बोर्ड पर दर्ज करता हूँ; अगर अभी नहीं हो सकता, तब भी बोर्ड पर दर्ज करता हूँ।'
      ) }
      @{ Title = 'बोर्ड को अपडेट रखना क्यों जरूरी है'; Paragraphs = @(
        'अपडेटेड बोर्ड ही उपयोगी बोर्ड है। यह स्पष्टता देता है, चिंता घटाता है और काम के असली भार को दिखाई देने लायक बनाता है।'
      ) }
      @{ Title = 'व्यवहार में Kanban'; Paragraphs = @(
        'बोर्ड की संरचना कठोर नहीं होनी चाहिए। उसे उसी तरह का होना चाहिए जैसा आपका वास्तविक काम चलता है।'
      ) }
      @{ Title = 'प्राथमिकता और अल्पकालिक दृश्यता'; Paragraphs = @(
        'जब प्राथमिकताएँ साफ दिखाई देती हैं, तो दिन भर बेहतर निर्णय लेना आसान हो जाता है।'
      ) }
      @{ Title = 'इस बदलाव का परिणाम'; Paragraphs = @(
        'Board First अपनाने के बाद मेरी थकान की प्रकृति बदल गई। अब थकान भूलने और अव्यवस्था से कम, और उत्पादक काम से अधिक आती है।'
      ) }
      @{ Title = 'निष्कर्ष'; Paragraphs = @(
        'Kanban बोर्ड अपनाना महत्वपूर्ण है, लेकिन Board First इसे कहीं अधिक प्रभावशाली बना देता है।'
      ) }
    )
  }
  @{
    Code = 'ar'
    Template = "$root\ar\ma-huwa-kanban\index.html"
    NewDir = "$root\ar\board-first-kanban"
    NewUrl = '/ar/board-first-kanban/'
    HomeUrl = '/ar/'
    PrivacyUrl = '/ar/siyasat-al-khusoosiya/'
    ContactUrl = '/ar/ittisal/'
    WhatUrl = '/ar/ma-huwa-kanban/'
    MenuLabel = 'مقالة Board First'
    ArticleTitle = 'كيف قللت نسيان المهام في العمل باستخدام Kanban ومفهوم "Board First"'
    Description = 'مقال عملي عن استخدام لوحة Kanban كمركز للتنفيذ اليومي لتقليل النسيان والتوتر والعبء الذهني في العمل.'
    Keywords = 'board first, مقال kanban, لوحة kanban, تقليل النسيان, تنظيم العمل, الإدارة المرئية'
    NavLabel = 'قائمة الموقع'
    MenuTitle = 'القائمة'
    MenuOpen = 'فتح القائمة'
    LanguagesLabel = 'اللغات'
    RelatedLabel = 'محتوى ذو صلة'
    RelatedHome = 'الرئيسية'
    RelatedWhat = 'ما هو كانبان؟'
    RelatedArticle = 'مقالة Board First'
    Sections = @(
      @{ Title = 'لماذا احتجت إلى تغيير روتيني'; Paragraphs = @(
        'بدأت ألاحظ أنني أنسى مهامًا مهمة في العمل، ليس بسبب قلة الاهتمام، بل بسبب كثرة الأنشطة والتفاصيل والضغط الذهني.'
        'محاولة الاحتفاظ بكل شيء في الذاكرة كانت ترهقني وتزيد من توتري. لهذا قررت أن أغير أسلوبي في تنظيم العمل.'
      ) }
      @{ Title = 'قرار اعتماد لوحة Kanban'; Paragraphs = @(
        'بدأت باستخدام لوحة Kanban على kanbanapp.io لنقل المهام من ذهني إلى نظام بصري واضح.'
        'ثم أدركت أن وجود اللوحة وحده لا يكفي. كان عليّ أن أجعلها نقطة الانطلاق لكل تنفيذ. ومن هنا جاء مفهوم Board First.'
      ) }
      @{ Title = 'ماذا يعني "Board First"'; Paragraphs = @(
        'يعني Board First أن تصبح اللوحة هي المركز الفعلي لتنفيذ العمل، لا مجرد أداة مساعدة.'
        'كل قرار يتعلق بما يجب فعله ومتى وكيف تتم الأولويات يمر عبر اللوحة، وهذا يخفف العبء على الذاكرة.'
      ) }
      @{ Title = 'التعامل مع المهام اليومية والانقطاعات'; Paragraphs = @(
        'عندما تظهر مهمة جديدة، إما أن أنجزها فورًا إذا كانت بسيطة، أو أسجلها في اللوحة إذا كانت ستستمر لاحقًا، أو أضيفها مباشرة إذا لم يكن الوقت مناسبًا الآن.'
      ) }
      @{ Title = 'أهمية إبقاء اللوحة محدثة'; Paragraphs = @(
        'كلما كانت اللوحة محدثة، زاد الوضوح وقل التوتر. الأهم ليس فقط ما تم إنجازه، بل ما يزال مطلوبًا وموجودًا بشكل واضح.'
      ) }
      @{ Title = 'Kanban في التطبيق العملي'; Paragraphs = @(
        'لا يجب أن تكون بنية اللوحة جامدة. المهم أن تعكس الواقع الفعلي للعمل الذي تقوم به.'
      ) }
      @{ Title = 'تحديد الأولويات'; Paragraphs = @(
        'وضوح الأولويات على اللوحة يجعل اتخاذ القرار اليومي أكثر هدوءًا ودقة.'
      ) }
      @{ Title = 'نتيجة هذا التغيير'; Paragraphs = @(
        'بعد اعتماد Board First بقيت الأيام مزدحمة، لكن التعب أصبح نتيجة إنتاجية وتنفيذ جيد، لا نتيجة فوضى ونسيان.'
      ) }
      @{ Title = 'الخلاصة'; Paragraphs = @(
        'لوحة Kanban خطوة مهمة، لكن تحويلها إلى مبدأ Board First يضاعف فائدتها ويجعل العمل أكثر وضوحًا وتحكمًا.'
      ) }
    )
  }
  @{
    Code = 'zh-CN'
    Template = "$root\zh-cn\shen-me-shi-kanban\index.html"
    NewDir = "$root\zh-cn\board-first-kanban"
    NewUrl = '/zh-cn/board-first-kanban/'
    HomeUrl = '/zh-cn/'
    PrivacyUrl = '/zh-cn/yin-si-zheng-ce/'
    ContactUrl = '/zh-cn/lian-xi/'
    WhatUrl = '/zh-cn/shen-me-shi-kanban/'
    MenuLabel = 'Board First 文章'
    ArticleTitle = '我是如何用 Kanban 和 "Board First" 理念减少工作遗忘的'
    Description = '一篇实用文章，介绍如何把 Kanban 看板作为日常执行中心，从而减少遗忘、压力和工作中的脑力负担。'
    Keywords = 'board first, kanban 文章, kanban 看板, 减少遗忘, 工作组织, 可视化管理'
    NavLabel = '站点菜单'
    MenuTitle = '菜单'
    MenuOpen = '打开菜单'
    LanguagesLabel = '语言'
    RelatedLabel = '相关内容'
    RelatedHome = '首页'
    RelatedWhat = '什么是看板？'
    RelatedArticle = 'Board First 文章'
    Sections = @(
      @{ Title = '为什么我必须改变自己的工作方式'; Paragraphs = @(
        '有一段时间我开始注意到自己会忘记工作中的重要任务。这不是因为我不认真，而是因为同时处理的事情太多，脑力负担越来越重。'
        '把太多信息都留在脑子里，让我不仅因为工作本身疲惫，也因为不停地试图记住一切而疲惫。'
      ) }
      @{ Title = '决定采用 Kanban 看板'; Paragraphs = @(
        '于是我开始使用 kanbanapp.io，把任务从脑子里移到一个可视化系统中。'
        '但我很快发现，仅仅“有一个看板”还不够，我需要让它成为工作的中心，这就是 Board First。'
      ) }
      @{ Title = '"Board First" 的含义'; Paragraphs = @(
        'Board First 的核心是：看板不再只是辅助工具，而是执行工作的中心。'
        '关于做什么、什么时候做、优先做什么的决定，都通过看板来进行，这会显著减轻记忆负担。'
      ) }
      @{ Title = '如何处理日常任务与打断'; Paragraphs = @(
        '新任务出现时，如果能立刻完成，我就马上处理；如果需要后续跟进，我会立刻记到看板里；如果当下无法处理，也同样先进入看板。'
      ) }
      @{ Title = '为什么必须保持看板更新'; Paragraphs = @(
        '只有当看板保持更新时，它才真正有价值。它让未来工作更清晰，也让压力和不确定性下降。'
      ) }
      @{ Title = '看板的实际应用'; Paragraphs = @(
        '看板结构不需要僵化。重要的是它要真实反映你的工作流，而不是机械套用通用模板。'
      ) }
      @{ Title = '优先级与短期视角'; Paragraphs = @(
        '当优先级足够清晰时，一天中的决策会更容易，返工和拖延也会减少。'
      ) }
      @{ Title = '这种改变带来的结果'; Paragraphs = @(
        '采用 Board First 后，我依然忙碌，但疲惫更多来自高效执行，而不再来自混乱和遗忘。'
      ) }
      @{ Title = '结论'; Paragraphs = @(
        '采用 Kanban 看板已经很重要，而采用 Board First，会让这种价值放大得更加明显。'
      ) }
    )
  }
)

function Replace-Between {
  param(
    [string]$Text,
    [string]$StartMarker,
    [string]$EndMarker,
    [string]$Replacement
  )
  $start = $Text.IndexOf($StartMarker)
  if ($start -lt 0) { throw "Start marker not found: $StartMarker" }
  $end = $Text.IndexOf($EndMarker, $start)
  if ($end -lt 0) { throw "End marker not found: $EndMarker" }
  return $Text.Substring(0, $start) + $Replacement + $Text.Substring($end)
}

function Build-ArticleBody {
  param($Lang)
  $parts = New-Object System.Collections.Generic.List[string]
  $parts.Add('<header>')
  $parts.Add("<h1>$($Lang.ArticleTitle)</h1>")
  $parts.Add('</header>')
  $i = 1
  foreach ($section in $Lang.Sections) {
    $parts.Add("<section class=""box"" id=""section-$i"">")
    $parts.Add("<h2 style=""margin-top:0;border-top:none;padding-top:0;"">$($section.Title)</h2>")
    foreach ($paragraph in $section.Paragraphs) {
      $parts.Add("<p>$paragraph</p>")
    }
    $parts.Add('</section>')
    $i += 1
  }
  return ($parts -join "`n") + "`n"
}

function Build-Related {
  param($Lang)
  $parts = @(
    "<aside aria-label=""$($Lang.RelatedLabel)"" class=""related"">"
    "<h2>$($Lang.RelatedLabel)</h2>"
    '<ul>'
    "<li><a href=""$($Lang.HomeUrl)"">$($Lang.RelatedHome)</a></li>"
    "<li><a href=""$($Lang.WhatUrl)"">$($Lang.RelatedWhat)</a></li>"
    "<li><a href=""$($Lang.NewUrl)"">$($Lang.RelatedArticle)</a></li>"
    '</ul>'
    '</aside>'
  )
  return ($parts -join "`n")
}

$langMap = @{}
foreach ($lang in $languages) {
  $langMap[$lang.Code] = $lang.NewUrl
}

$routeLanguages = @('en', 'pt-BR', 'es', 'ar', 'hi', 'zh-CN', 'fr', 'de', 'id')
$routeObject = "{ en: '$($langMap['en'])', 'pt-BR': '$($langMap['pt-BR'])', es: '$($langMap['es'])', ar: '$($langMap['ar'])', hi: '$($langMap['hi'])', 'zh-CN': '$($langMap['zh-CN'])', fr: '$($langMap['fr'])', de: '$($langMap['de'])', id: '$($langMap['id'])' }"

foreach ($lang in $languages) {
  $templateText = [System.IO.File]::ReadAllText($lang.Template, [System.Text.Encoding]::UTF8)
  $articleBody = Build-ArticleBody $lang
  $templateText = Replace-Between -Text $templateText -StartMarker '<header>' -EndMarker '<aside ' -Replacement $articleBody
  $related = (Build-Related $lang) + "`n"
  $templateText = Replace-Between -Text $templateText -StartMarker '<aside ' -EndMarker '</aside>' -Replacement $related

  if ($templateText -notmatch [regex]::Escape($lang.NewUrl)) {
    $templateRegex = [regex]::new('(<ul class="quick-links-list">\s*<li><a[^>]*href="[^"]+">.*?</a></li>\s*)', [System.Text.RegularExpressions.RegexOptions]::Singleline)
    $templateText = $templateRegex.Replace($templateText, '$1<li><a href="' + $lang.NewUrl + '">' + $lang.MenuLabel + '</a></li>' + "`n", 1)
  }

  $titleTag = '<title>' + $lang.ArticleTitle + ' | KanbanApp</title>'
  $templateText = [regex]::Replace($templateText, '<title>.*?</title>', [System.Text.RegularExpressions.MatchEvaluator]{ param($m) $titleTag }, 1)
  $templateText = [regex]::Replace($templateText, '<meta content=".*?" name="description"/>', '<meta content="' + $lang.Description + '" name="description"/>', 1)
  $templateText = [regex]::Replace($templateText, '<meta content=".*?" property="og:title"/>', '<meta content="' + $lang.ArticleTitle + ' | KanbanApp" property="og:title"/>', 1)
  $templateText = [regex]::Replace($templateText, '<meta content=".*?" property="og:description"/>', '<meta content="' + $lang.Description + '" property="og:description"/>', 1)
  $templateText = [regex]::Replace($templateText, '<meta content=".*?" name="twitter:title"/>', '<meta content="' + $lang.ArticleTitle + ' | KanbanApp" name="twitter:title"/>', 1)
  $templateText = [regex]::Replace($templateText, '<meta content=".*?" name="twitter:description"/>', '<meta content="' + $lang.Description + '" name="twitter:description"/>', 1)
  $templateText = [regex]::Replace($templateText, '<meta content=".*?" name="keywords"/>', '<meta content="' + $lang.Keywords + '" name="keywords"/>', 1)
  $templateText = [regex]::Replace($templateText, '<link href="https://kanbanapp\.io/.*?" rel="canonical"/>', '<link href="https://kanbanapp.io' + $lang.NewUrl + '" rel="canonical"/>', 1)
  $templateText = [regex]::Replace($templateText, '<meta content="https://kanbanapp\.io.*?" property="og:url"/>', '<meta content="https://kanbanapp.io' + $lang.NewUrl + '" property="og:url"/>', 1)
  $templateText = [regex]::Replace($templateText, '<nav aria-label=".*?" class="quick-links-menu">', '<nav aria-label="' + $lang.NavLabel + '" class="quick-links-menu">', 1)
  $templateText = [regex]::Replace($templateText, '<summary aria-label=".*?" title=".*?">', '<summary aria-label="' + $lang.MenuOpen + '" title="' + $lang.MenuTitle + '">', 1)
  $templateText = [regex]::Replace($templateText, '<div aria-label=".*?" class="lang-switcher">', '<div aria-label="' + $lang.LanguagesLabel + '" class="lang-switcher">', 1)

  New-Item -ItemType Directory -Force -Path $lang.NewDir | Out-Null
  [System.IO.File]::WriteAllText((Join-Path $lang.NewDir 'index.html'), $templateText, [System.Text.UTF8Encoding]::new($false))
}

$pageList = @(
  "$root\index.html", "$root\contact\index.html", "$root\privacy-policy\index.html", "$root\what-is-kanban\index.html",
  "$root\pt-br\index.html", "$root\pt-br\contato\index.html", "$root\pt-br\politica-de-privacidade\index.html", "$root\pt-br\o-que-e-kanban\index.html",
  "$root\es\index.html", "$root\es\contacto\index.html", "$root\es\politica-de-privacidad\index.html", "$root\es\que-es-kanban\index.html",
  "$root\fr\index.html", "$root\fr\contact\index.html", "$root\fr\politique-de-confidentialite\index.html", "$root\fr\qu-est-ce-que-kanban\index.html",
  "$root\de\index.html", "$root\de\kontakt\index.html", "$root\de\datenschutzerklaerung\index.html", "$root\de\was-ist-kanban\index.html",
  "$root\id\index.html", "$root\id\kontak\index.html", "$root\id\kebijakan-privasi\index.html", "$root\id\apa-itu-kanban\index.html",
  "$root\hi\index.html", "$root\hi\sampark\index.html", "$root\hi\gopniyata-neeti\index.html", "$root\hi\kanban-kya-hai\index.html",
  "$root\ar\index.html", "$root\ar\ittisal\index.html", "$root\ar\siyasat-al-khusoosiya\index.html", "$root\ar\ma-huwa-kanban\index.html",
  "$root\zh-cn\index.html", "$root\zh-cn\lian-xi\index.html", "$root\zh-cn\yin-si-zheng-ce\index.html", "$root\zh-cn\shen-me-shi-kanban\index.html"
)

$menuMap = @{
  "$root\index.html" = @{ Url = '/board-first-kanban/'; Label = 'Board First Article' }
  "$root\contact\index.html" = @{ Url = '/board-first-kanban/'; Label = 'Board First Article' }
  "$root\privacy-policy\index.html" = @{ Url = '/board-first-kanban/'; Label = 'Board First Article' }
  "$root\what-is-kanban\index.html" = @{ Url = '/board-first-kanban/'; Label = 'Board First Article' }
  "$root\pt-br\index.html" = @{ Url = '/pt-br/board-first-kanban/'; Label = 'Artigo Board First' }
  "$root\pt-br\contato\index.html" = @{ Url = '/pt-br/board-first-kanban/'; Label = 'Artigo Board First' }
  "$root\pt-br\politica-de-privacidade\index.html" = @{ Url = '/pt-br/board-first-kanban/'; Label = 'Artigo Board First' }
  "$root\pt-br\o-que-e-kanban\index.html" = @{ Url = '/pt-br/board-first-kanban/'; Label = 'Artigo Board First' }
  "$root\es\index.html" = @{ Url = '/es/board-first-kanban/'; Label = 'Artículo Board First' }
  "$root\es\contacto\index.html" = @{ Url = '/es/board-first-kanban/'; Label = 'Artículo Board First' }
  "$root\es\politica-de-privacidad\index.html" = @{ Url = '/es/board-first-kanban/'; Label = 'Artículo Board First' }
  "$root\es\que-es-kanban\index.html" = @{ Url = '/es/board-first-kanban/'; Label = 'Artículo Board First' }
  "$root\fr\index.html" = @{ Url = '/fr/board-first-kanban/'; Label = 'Article Board First' }
  "$root\fr\contact\index.html" = @{ Url = '/fr/board-first-kanban/'; Label = 'Article Board First' }
  "$root\fr\politique-de-confidentialite\index.html" = @{ Url = '/fr/board-first-kanban/'; Label = 'Article Board First' }
  "$root\fr\qu-est-ce-que-kanban\index.html" = @{ Url = '/fr/board-first-kanban/'; Label = 'Article Board First' }
  "$root\de\index.html" = @{ Url = '/de/board-first-kanban/'; Label = 'Board-First-Artikel' }
  "$root\de\kontakt\index.html" = @{ Url = '/de/board-first-kanban/'; Label = 'Board-First-Artikel' }
  "$root\de\datenschutzerklaerung\index.html" = @{ Url = '/de/board-first-kanban/'; Label = 'Board-First-Artikel' }
  "$root\de\was-ist-kanban\index.html" = @{ Url = '/de/board-first-kanban/'; Label = 'Board-First-Artikel' }
  "$root\id\index.html" = @{ Url = '/id/board-first-kanban/'; Label = 'Artikel Board First' }
  "$root\id\kontak\index.html" = @{ Url = '/id/board-first-kanban/'; Label = 'Artikel Board First' }
  "$root\id\kebijakan-privasi\index.html" = @{ Url = '/id/board-first-kanban/'; Label = 'Artikel Board First' }
  "$root\id\apa-itu-kanban\index.html" = @{ Url = '/id/board-first-kanban/'; Label = 'Artikel Board First' }
  "$root\hi\index.html" = @{ Url = '/hi/board-first-kanban/'; Label = 'बोर्ड फर्स्ट लेख' }
  "$root\hi\sampark\index.html" = @{ Url = '/hi/board-first-kanban/'; Label = 'बोर्ड फर्स्ट लेख' }
  "$root\hi\gopniyata-neeti\index.html" = @{ Url = '/hi/board-first-kanban/'; Label = 'बोर्ड फर्स्ट लेख' }
  "$root\hi\kanban-kya-hai\index.html" = @{ Url = '/hi/board-first-kanban/'; Label = 'बोर्ड फर्स्ट लेख' }
  "$root\ar\index.html" = @{ Url = '/ar/board-first-kanban/'; Label = 'مقالة Board First' }
  "$root\ar\ittisal\index.html" = @{ Url = '/ar/board-first-kanban/'; Label = 'مقالة Board First' }
  "$root\ar\siyasat-al-khusoosiya\index.html" = @{ Url = '/ar/board-first-kanban/'; Label = 'مقالة Board First' }
  "$root\ar\ma-huwa-kanban\index.html" = @{ Url = '/ar/board-first-kanban/'; Label = 'مقالة Board First' }
  "$root\zh-cn\index.html" = @{ Url = '/zh-cn/board-first-kanban/'; Label = 'Board First 文章' }
  "$root\zh-cn\lian-xi\index.html" = @{ Url = '/zh-cn/board-first-kanban/'; Label = 'Board First 文章' }
  "$root\zh-cn\yin-si-zheng-ce\index.html" = @{ Url = '/zh-cn/board-first-kanban/'; Label = 'Board First 文章' }
  "$root\zh-cn\shen-me-shi-kanban\index.html" = @{ Url = '/zh-cn/board-first-kanban/'; Label = 'Board First 文章' }
}

$routeLines = @()
foreach ($lang in $languages) {
  $routeLines += "        '$($lang.NewUrl)': $routeObject,"
}
$routeBlock = ($routeLines -join "`n") + "`n"
$routeAliases = @(
  "      ROUTE_PAIRS['/pt-br/board-first-kanban/'] = ROUTE_PAIRS['/board-first-kanban/'];"
  "      ROUTE_PAIRS['/es/board-first-kanban/'] = ROUTE_PAIRS['/board-first-kanban/'];"
  "      ROUTE_PAIRS['/fr/board-first-kanban/'] = ROUTE_PAIRS['/board-first-kanban/'];"
  "      ROUTE_PAIRS['/de/board-first-kanban/'] = ROUTE_PAIRS['/board-first-kanban/'];"
  "      ROUTE_PAIRS['/id/board-first-kanban/'] = ROUTE_PAIRS['/board-first-kanban/'];"
  "      ROUTE_PAIRS['/hi/board-first-kanban/'] = ROUTE_PAIRS['/board-first-kanban/'];"
  "      ROUTE_PAIRS['/ar/board-first-kanban/'] = ROUTE_PAIRS['/board-first-kanban/'];"
  "      ROUTE_PAIRS['/zh-cn/board-first-kanban/'] = ROUTE_PAIRS['/board-first-kanban/'];"
) -join "`n"

foreach ($page in $pageList) {
  $text = [System.IO.File]::ReadAllText($page, [System.Text.Encoding]::UTF8)
  $menu = $menuMap[$page]
  if ($text -notmatch [regex]::Escape($menu.Url)) {
    $menuRegex = [regex]::new('(<ul class="quick-links-list">\s*<li><a[^>]*href="[^"]+">.*?</a></li>\s*)', [System.Text.RegularExpressions.RegexOptions]::Singleline)
    $text = $menuRegex.Replace($text, '$1<li><a class="text-link" href="' + $menu.Url + '">' + $menu.Label + '</a></li>' + "`n", 1)
    $text = $text.Replace('<a class="text-link" href="/board-first-kanban/">Artigo Board First</a>', '<a href="/board-first-kanban/">Artigo Board First</a>')
  }
  if ($text -notmatch [regex]::Escape("/board-first-kanban/':")) {
    $anchor = "        '/zh-cn/': { en: '/', 'pt-BR': '/pt-br/', es: '/es/', ar: '/ar/', hi: '/hi/', 'zh-CN': '/zh-cn/', fr: '/fr/', de: '/de/', id: '/id/' },`n`n"
    if ($text.Contains($anchor)) {
      $text = $text.Replace($anchor, $anchor + $routeBlock + "`n")
    }
    $aliasAnchor = "      ROUTE_PAIRS['/id/apa-itu-kanban/'] = ROUTE_PAIRS['/what-is-kanban/'];"
    if ($text.Contains($aliasAnchor) -and -not $text.Contains("/pt-br/board-first-kanban/")) {
      $text = $text.Replace($aliasAnchor, $aliasAnchor + "`n`n" + $routeAliases)
    }
  }
  [System.IO.File]::WriteAllText($page, $text, [System.Text.UTF8Encoding]::new($false))
}

$sitemap = Join-Path $root 'sitemap.xml'
if (Test-Path $sitemap) {
  $sitemapText = [System.IO.File]::ReadAllText($sitemap, [System.Text.Encoding]::UTF8)
  $insert = New-Object System.Collections.Generic.List[string]
  foreach ($lang in $languages) {
    $loc = "https://kanbanapp.io$($lang.NewUrl)"
    if (-not $sitemapText.Contains($loc)) {
      $insert.Add("  <url><loc>$loc</loc></url>")
    }
  }
  if ($insert.Count -gt 0) {
    $sitemapText = $sitemapText.Replace('</urlset>', ($insert -join "`n") + "`n</urlset>")
    [System.IO.File]::WriteAllText($sitemap, $sitemapText, [System.Text.UTF8Encoding]::new($false))
  }
}

Write-Output 'Board First pages generated.'
