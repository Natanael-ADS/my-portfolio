import 'package:my_portfolio/models/project.dart';

/// Apps e projetos — edite aqui ou siga `docs/PROJETOS-PARA-PREENCHER.md`.
///
/// Campos de link vazios (`''`) = botão não aparece até você colar a URL.
const portfolioProjects = <Project>[
  // ─── JERA ───────────────────────────────────────────────────────────────
  Project(
    title: 'Rock in Rio',
    company: 'Jera',
    period: '2023 – 2025',
    category: 'Eventos · Alto tráfego',
    description:
        'App oficial do festival em Flutter. Manutenção em produção durante eventos '
        'ao vivo, com picos de acesso e necessidade de estabilidade contínua.',
    contributions: [
      'Correções críticas e evolução de features durante o evento',
      'Garantia de usabilidade e estabilidade em horários de pico',
      'Suporte a releases e ajustes em produção (iOS e Android)',
    ],
    technologies: ['Flutter', 'Dart', 'REST APIs', 'Firebase', 'CI/CD'],
    playStoreUrl: '', // TODO: colar link Play Store
    appStoreUrl: '', // TODO: colar link App Store
  ),
  Project(
    title: 'ECXPay',
    company: 'Jera',
    period: '2023 – 2025',
    category: 'Fintech · Carteira digital',
    description:
        'Carteira digital com PIX, onboarding, extrato e notificações. '
        'Refatoração que transformou um front isolado em app integrado de ponta a ponta.',
    contributions: [
      'Refatoração estrutural e integração completa com APIs',
      'Fluxos de PIX, onboarding e extrato financeiro',
      'Notificações push e estabilidade em produção',
      'Organização técnica e aceleração do time',
    ],
    technologies: ['Flutter', 'Dart', 'REST APIs', 'PIX', 'Push Notifications', 'Bitrise'],
    playStoreUrl: '',
    appStoreUrl: '',
  ),
  Project(
    title: 'Orbit',
    company: 'Jera',
    period: '2024',
    category: 'Produto digital',
    description:
        'App Flutter entregue sob prazo agressivo (~3 meses), com foco em '
        'organização da execução técnica e estabilidade das features principais.',
    contributions: [
      'Desenvolvimento de features e integrações com APIs',
      'Organização da entrega técnica dentro do prazo',
      'Publicação e sustentação nas lojas',
    ],
    technologies: ['Flutter', 'Dart', 'REST APIs', 'Clean Architecture'],
    playStoreUrl: '',
    appStoreUrl: '',
  ),
  Project(
    title: 'Zélia',
    company: 'Jera',
    period: '2022',
    category: 'Produto digital',
    description:
        'Primeiro app Flutter na Jera. Desenvolvimento a partir de layouts Figma, '
        'com foco em qualidade de código e organização arquitetural.',
    contributions: [
      'Implementação de interfaces seguindo design system',
      'Clean Architecture, MVVM e SOLID',
      'Pair programming, code reviews e documentação técnica',
      'Colaboração com PO, Design e QA em Scrum',
    ],
    technologies: ['Flutter', 'Dart', 'Figma', 'MVVM', 'GitFlow'],
    playStoreUrl: '',
    appStoreUrl: '',
  ),

  // ─── I3 SISTEMAS ────────────────────────────────────────────────────────
  Project(
    title: 'MasterFoods Comanda',
    company: 'i3 Sistemas',
    period: '2024 – 2026',
    category: 'Varejo · Pagamentos',
    description:
        'App de comanda para restaurantes. Integração de pagamentos em ambiente '
        'de produção real, com operação sob pressão em salão.',
    contributions: [
      'Integração de pagamentos Stone (callbacks, deep link, tratamento de erro)',
      'Integração PagBank/PagSeguro e adaptação do fluxo mobile',
      'Melhorias de UX para o operador em cenários de falha de rede',
      'Correções críticas e evolução contínua do app',
    ],
    technologies: ['Flutter', 'Stone', 'PagBank', 'REST APIs', 'Deep Links'],
    playStoreUrl: '',
    appStoreUrl: '',
  ),

  // ─── SISTEMA QUANTUM ────────────────────────────────────────────────────
  Project(
    title: 'Força de Vendas',
    company: 'Sistema Quantum',
    period: '2019 – 2022',
    category: 'ERP · Offline-first',
    description:
        'App Android corporativo de força de vendas com sincronização offline/online '
        'e integração com sistemas legados (Delphi) e APIs Spring Boot.',
    contributions: [
      'Sincronização de pedidos, clientes, produtos e preços offline/online',
      'Desenvolvimento end-to-end: retaguarda Delphi → API Spring Boot → Android',
      'Participação na migração GlassFish → Spring Boot',
      'Ownership de features completas em produção',
    ],
    technologies: ['Android', 'Java', 'Spring Boot', 'MySQL', 'Offline-first'],
    playStoreUrl: '',
    appStoreUrl: '',
  ),
  Project(
    title: 'Quantum Comanda / Estoque',
    company: 'Sistema Quantum',
    period: '2019 – 2022',
    category: 'ERP · Varejo',
    description:
        'Aplicativos corporativos de comanda e estoque para operações de varejo, '
        'com foco em ambiente offline-first.',
    contributions: [
      'Desenvolvimento e sustentação de módulos de comanda e estoque',
      'Melhorias de usabilidade e correções em produção',
      'Integração com APIs e sincronização de dados',
    ],
    technologies: ['Android', 'Java', 'Offline-first', 'REST APIs'],
    playStoreUrl: '',
    appStoreUrl: '',
  ),
  Project(
    title: 'Quantum Ajuda',
    company: 'Sistema Quantum',
    period: '2020',
    category: 'Suporte · Conteúdo',
    description:
        'Módulo de tutoriais in-app com vídeos e imagens via Firebase Storage, '
        'reduzindo chamados de suporte.',
    contributions: [
      'Implementação do módulo de ajuda com mídia (Firebase Storage)',
      'Melhoria da experiência de onboarding e suporte ao usuário',
    ],
    technologies: ['Android', 'Java', 'Firebase Storage'],
    playStoreUrl: '',
    appStoreUrl: '',
  ),
  Project(
    title: 'Apps Flutter Quantum',
    company: 'Sistema Quantum',
    period: '2025 – atual',
    category: 'ERP · Flutter',
    description:
        'Manutenção e evolução de aplicações Flutter em produção para ERPs '
        'e soluções de gestão (supermercados, restaurantes, varejo).',
    contributions: [
      'Novas features e correções críticas em apps iOS e Android',
      'Suporte a incidentes e análise de problemas em produção',
      'Code review e apoio técnico a desenvolvedor júnior',
      'Publicações contínuas nas lojas',
    ],
    technologies: ['Flutter', 'Dart', 'REST APIs', 'CI/CD', 'Code Review'],
    playStoreUrl: '', // pode ter vários apps — duplique este bloco se necessário
    appStoreUrl: '',
  ),

  // ─── PROJETOS PÚBLICOS ──────────────────────────────────────────────────
  Project(
    title: 'Sistema de Registro de Ponto',
    company: 'Player Contabilidade',
    period: '2025',
    category: 'Teste técnico · Full-stack',
    description:
        'Desafio técnico completo: backend Java/Spring Boot, app Flutter Web '
        'e automação RPA em Python para importação de batidas de portal externo.',
    contributions: [
      'API REST com JWT, jornadas, dashboard gerencial e importação RPA',
      'Flutter Web com Clean Architecture, Riverpod e GoRouter',
      'Robô Python + Playwright para scraping e envio de dados',
      'Testes automatizados no backend e frontend',
    ],
    technologies: ['Flutter', 'Java', 'Spring Boot', 'Python', 'Playwright', 'MySQL'],
    githubUrl: 'https://github.com/Sistema-de-Registro-de-Ponto',
    webUrl: 'https://github.com/Sistema-de-Registro-de-Ponto/registro-ponto-frontend',
  ),

  // ─── TEMPLATE — copie este bloco para novos apps ────────────────────────
  // Project(
  //   title: 'Nome do App',
  //   company: 'Nome da Empresa',
  //   period: 'AAAA – AAAA',
  //   category: 'Segmento · Tipo',
  //   description: 'Uma frase: o que é o app e para quem serve.',
  //   contributions: [
  //     'O que VOCÊ fez (feature, integração, refatoração, bugfix)',
  //     'Outra entrega sua',
  //   ],
  //   technologies: ['Flutter', 'Dart'],
  //   playStoreUrl: 'https://play.google.com/store/apps/details?id=...',
  //   appStoreUrl: 'https://apps.apple.com/app/id...',
  // ),
];
