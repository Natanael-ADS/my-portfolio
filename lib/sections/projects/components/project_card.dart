import 'package:flutter/material.dart';
import 'package:my_portfolio/components/button/app_filled_button.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/utils/launch_url.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  bool _hasUrl(String? url) => url != null && url.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF3A3A3A)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.company, style: AppFonts.medium(12, AppColors.primary)),
                    const SizedBox(height: 4),
                    Text(project.title, style: AppFonts.bold(20, AppColors.textPrimary)),
                  ],
                ),
              ),
              Text(project.period, style: AppFonts.regular(12, AppColors.textSecondary)),
            ],
          ),
          if (project.category != null) ...[
            const SizedBox(height: 6),
            Text(project.category!, style: AppFonts.regular(12, AppColors.textSecondary)),
          ],
          const SizedBox(height: 12),
          Text(project.description, style: AppFonts.regular(14, AppColors.textSecondary)),
          const SizedBox(height: 12),
          Text('O que fiz:', style: AppFonts.medium(13, AppColors.textPrimary)),
          const SizedBox(height: 6),
          ...project.contributions.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• ', style: AppFonts.regular(13, AppColors.primary)),
                  Expanded(
                    child: Text(item, style: AppFonts.regular(13, AppColors.textSecondary)),
                  ),
                ],
              ),
            ),
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
          if (project.hasAnyLink) ...[
            const SizedBox(height: 20),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                if (_hasUrl(project.playStoreUrl))
                  AppFilledButton(
                    text: 'Play Store',
                    onPressed: () => launchExternalUrl(project.playStoreUrl!),
                  ),
                if (_hasUrl(project.appStoreUrl))
                  AppFilledButton(
                    text: 'App Store',
                    onPressed: () => launchExternalUrl(project.appStoreUrl!),
                  ),
                if (_hasUrl(project.githubUrl))
                  AppOutlinedLinkButton(
                    label: 'GitHub',
                    onPressed: () => launchExternalUrl(project.githubUrl!),
                  ),
                if (_hasUrl(project.webUrl))
                  AppOutlinedLinkButton(
                    label: 'Ver projeto',
                    onPressed: () => launchExternalUrl(project.webUrl!),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class AppOutlinedLinkButton extends StatelessWidget {
  const AppOutlinedLinkButton({super.key, required this.label, required this.onPressed});

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(label, style: AppFonts.medium(14, AppColors.primary)),
    );
  }
}
