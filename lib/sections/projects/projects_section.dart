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
    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projetos', style: AppFonts.bold(36, AppColors.textPrimary)),
          const SizedBox(height: 8),
          Container(width: 60, height: 4, color: AppColors.primary),
          const SizedBox(height: 32),
          if (Responsive.isMobile(context))
            Column(
              children: portfolioProjects
                  .map(
                    (project) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: SizedBox(height: 320, child: ProjectCard(project: project)),
                    ),
                  )
                  .toList(),
            )
          else
            SizedBox(
              height: 340,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: portfolioProjects.length,
                separatorBuilder: (_, _) => const SizedBox(width: 24),
                itemBuilder: (_, index) => ProjectCard(project: portfolioProjects[index]),
              ),
            ),
        ],
      ),
    );
  }
}
