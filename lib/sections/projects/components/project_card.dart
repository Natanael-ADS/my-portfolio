import 'package:flutter/material.dart';
import 'package:my_portfolio/components/button/app_filled_button.dart';
import 'package:my_portfolio/components/button/app_text_button.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/utils/launch_url.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF3A3A3A)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (project.highlight != null) ...[
            Text(project.highlight!, style: AppFonts.medium(12, AppColors.primary)),
            const SizedBox(height: 8),
          ],
          Text(project.title, style: AppFonts.bold(20, AppColors.textPrimary)),
          const SizedBox(height: 12),
          Text(
            project.description,
            style: AppFonts.regular(14, AppColors.textSecondary),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: project.technologies
                .map(
                  (tech) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(tech, style: AppFonts.regular(12, AppColors.primaryLight)),
                  ),
                )
                .toList(),
          ),
          const Spacer(),
          const SizedBox(height: 20),
          Row(
            children: [
              if (project.githubUrl != null)
                AppFilledButton(
                  text: 'GitHub',
                  onPressed: () => launchExternalUrl(project.githubUrl!),
                ),
              if (project.url != null) ...[
                const SizedBox(width: 12),
                AppTextButton(
                  text: 'Ver projeto',
                  onPressed: () => launchExternalUrl(project.url!),
                  textStyle: AppFonts.medium(14, AppColors.primary),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
