/// Modelo de projeto/app do portfólio.
///
/// Para adicionar um app novo, copie um bloco em [portfolioProjects]
/// em `lib/data/projects_data.dart` e preencha os campos.
/// Guia completo: `docs/PROJETOS-PARA-PREENCHER.md`
class Project {
  const Project({
    required this.title,
    required this.company,
    required this.period,
    required this.description,
    required this.contributions,
    required this.technologies,
    this.playStoreUrl,
    this.appStoreUrl,
    this.webUrl,
    this.githubUrl,
    this.category,
  });

  final String title;
  final String company;
  final String period;
  final String description;
  final List<String> contributions;
  final List<String> technologies;
  final String? playStoreUrl;
  final String? appStoreUrl;
  final String? webUrl;
  final String? githubUrl;
  final String? category;

  bool get hasStoreLink =>
      (playStoreUrl != null && playStoreUrl!.isNotEmpty) ||
      (appStoreUrl != null && appStoreUrl!.isNotEmpty);

  bool get hasAnyLink =>
      hasStoreLink ||
      (webUrl != null && webUrl!.isNotEmpty) ||
      (githubUrl != null && githubUrl!.isNotEmpty);
}
