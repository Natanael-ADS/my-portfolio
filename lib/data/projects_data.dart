import 'package:my_portfolio/models/project.dart';

const portfolioProjects = <Project>[
  Project(
    title: 'Rock in Rio & ECXPay',
    description:
        'Apps Flutter em produção de alto impacto: evento ao vivo com tráfego massivo '
        'e carteira digital com PIX, onboarding, extrato e notificações.',
    technologies: ['Flutter', 'Dart', 'REST APIs', 'Firebase', 'CI/CD', 'Bitrise'],
    highlight: 'Jera · Apps publicados nas lojas',
  ),
  Project(
    title: 'MasterFoods Comanda',
    description:
        'App de comanda para restaurantes com integrações de pagamento Stone e '
        'PagBank/PagSeguro. Fluxos de callback, deep link e tratamento de erros em produção.',
    technologies: ['Flutter', 'Stone', 'PagBank', 'REST APIs', 'UX Mobile'],
    highlight: 'i3 Sistemas · Pagamentos mobile',
  ),
  Project(
    title: 'Sistema de Registro de Ponto',
    description:
        'Desafio técnico full-stack: backend Java/Spring Boot, app Flutter Web com '
        'Clean Architecture e automação RPA em Python para importação de batidas.',
    technologies: ['Flutter', 'Java', 'Spring Boot', 'Python', 'Playwright', 'MySQL'],
    githubUrl: 'https://github.com/Sistema-de-Registro-de-Ponto',
    highlight: 'Player Contabilidade · Teste técnico',
  ),
];
