import 'package:flutter/material.dart';
import 'package:my_portfolio/components/layout/section_container.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/data/projects_data.dart';
import 'package:my_portfolio/sections/projects/components/project_card.dart';
import 'package:my_portfolio/utils/responsive.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final columns = Responsive.isMobile(context) ? 1 : 2;

    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projetos & Apps', style: AppFonts.bold(36, AppColors.textPrimary)),
          const SizedBox(height: 8),
          Container(width: 60, height: 4, color: AppColors.primary),
          const SizedBox(height: 12),
          Text(
            '${portfolioProjects.length} apps em que participei ou implementei — '
            'de eventos de alto tráfego a ERPs offline-first e fintech.',
            style: AppFonts.regular(15, AppColors.textSecondary),
          ),
          const SizedBox(height: 32),
          LayoutBuilder(
            builder: (context, constraints) {
              const spacing = 24.0;
              final cardWidth = columns == 1
                  ? constraints.maxWidth
                  : (constraints.maxWidth - spacing) / columns;

              return Wrap(
                spacing: spacing,
                runSpacing: spacing,
                children: portfolioProjects
                    .map(
                      (project) => SizedBox(
                        width: cardWidth,
                        child: ProjectCard(project: project),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
