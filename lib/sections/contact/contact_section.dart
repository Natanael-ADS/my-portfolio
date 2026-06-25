import 'package:flutter/material.dart';
import 'package:my_portfolio/components/button/app_filled_button.dart';
import 'package:my_portfolio/components/button/app_text_button.dart';
import 'package:my_portfolio/components/layout/section_container.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_constants.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/utils/launch_url.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contato', style: AppFonts.bold(36, AppColors.textPrimary)),
          const SizedBox(height: 8),
          Container(width: 60, height: 4, color: AppColors.primary),
          const SizedBox(height: 24),
          Text(
            'Aberto a oportunidades remotas no Brasil (Flutter/Mobile, PJ).',
            style: AppFonts.regular(16, AppColors.textSecondary),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 12,
            children: [
              AppFilledButton(
                text: 'Enviar e-mail',
                onPressed: () => launchExternalUrl('mailto:${AppConstants.email}'),
              ),
              AppTextButton(
                text: 'LinkedIn',
                onPressed: () => launchExternalUrl(AppConstants.linkedin),
                textStyle: AppFonts.medium(16, AppColors.primary),
              ),
              AppTextButton(
                text: 'GitHub',
                onPressed: () => launchExternalUrl(AppConstants.github),
                textStyle: AppFonts.medium(16, AppColors.primary),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(AppConstants.email, style: AppFonts.regular(14, AppColors.textSecondary)),
        ],
      ),
    );
  }
}
