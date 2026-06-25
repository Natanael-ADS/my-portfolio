import 'package:my_portfolio/models/skill.dart';

const portfolioSkills = <Skill>[
  // Mobile
  Skill(name: 'Flutter', category: 'Mobile'),
  Skill(name: 'Dart', category: 'Mobile'),
  Skill(name: 'Android (Java)', category: 'Mobile'),
  Skill(name: 'Publicação Play Store / App Store', category: 'Mobile'),
  Skill(name: 'Flutter Web', category: 'Mobile'),

  // Arquitetura
  Skill(name: 'Clean Architecture', category: 'Arquitetura'),
  Skill(name: 'MVVM', category: 'Arquitetura'),
  Skill(name: 'SOLID', category: 'Arquitetura'),
  Skill(name: 'Offline-first', category: 'Arquitetura'),
  Skill(name: 'Riverpod', category: 'Arquitetura'),
  Skill(name: 'GoRouter', category: 'Arquitetura'),

  // Integrações & APIs
  Skill(name: 'REST APIs', category: 'Integrações'),
  Skill(name: 'Integração de Pagamentos', category: 'Integrações'),
  Skill(name: 'Stone', category: 'Integrações'),
  Skill(name: 'PagBank / PagSeguro', category: 'Integrações'),
  Skill(name: 'PIX', category: 'Integrações'),
  Skill(name: 'Firebase', category: 'Integrações'),
  Skill(name: 'Push Notifications', category: 'Integrações'),
  Skill(name: 'Deep Links', category: 'Integrações'),

  // Backend
  Skill(name: 'Java', category: 'Backend'),
  Skill(name: 'Spring Boot', category: 'Backend'),
  Skill(name: 'MySQL', category: 'Backend'),
  Skill(name: 'JWT / Autenticação', category: 'Backend'),

  // DevOps & Qualidade
  Skill(name: 'Git / GitFlow', category: 'DevOps'),
  Skill(name: 'CI/CD', category: 'DevOps'),
  Skill(name: 'Bitrise', category: 'DevOps'),
  Skill(name: 'Code Review', category: 'DevOps'),
  Skill(name: 'Testes automatizados', category: 'DevOps'),

  // Práticas
  Skill(name: 'Scrum / Ágil', category: 'Práticas'),
  Skill(name: 'Mentoria técnica', category: 'Práticas'),
  Skill(name: 'Pair Programming', category: 'Práticas'),
  Skill(name: 'Figma / Design System', category: 'Práticas'),
  Skill(name: 'Cursor / IA no desenvolvimento', category: 'Práticas'),
];

/// Categorias na ordem de exibição.
const skillCategories = [
  'Mobile',
  'Arquitetura',
  'Integrações',
  'Backend',
  'DevOps',
  'Práticas',
];
