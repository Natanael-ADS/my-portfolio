class Project {
  const Project({
    required this.title,
    required this.description,
    required this.technologies,
    this.url,
    this.githubUrl,
    this.highlight,
  });

  final String title;
  final String description;
  final List<String> technologies;
  final String? url;
  final String? githubUrl;
  final String? highlight;
}
