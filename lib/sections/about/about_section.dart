import 'package:flutter/material.dart';
import 'package:my_portfolio/components/button/app_filled_button.dart';
import 'package:my_portfolio/components/layout/section_container.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_constants.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/utils/launch_url.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sobre mim', style: AppFonts.bold(36, AppColors.textPrimary)),
          const SizedBox(height: 8),
          Container(width: 60, height: 4, color: AppColors.primary),
          const SizedBox(height: 24),
          Text(
            AppConstants.aboutMe.trim(),
            style: AppFonts.regular(16, AppColors.textSecondary),
          ),
          const SizedBox(height: 16),
          Text(
            AppConstants.location,
            style: AppFonts.medium(14, AppColors.textSecondary),
          ),
          const SizedBox(height: 24),
          AppFilledButton(
            text: 'Ver projetos no GitHub',
            onPressed: () => launchExternalUrl(AppConstants.github),
          ),
        ],
      ),
    );
  }
}
