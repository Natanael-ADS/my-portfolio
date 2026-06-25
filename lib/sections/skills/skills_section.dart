import 'package:flutter/material.dart';
import 'package:my_portfolio/components/layout/section_container.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/data/skills_data.dart';
import 'package:my_portfolio/sections/skills/components/skill_chip.dart';
import 'package:my_portfolio/utils/responsive.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = Responsive.isMobile(context) ? 2 : 4;

    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Habilidades', style: AppFonts.bold(36, AppColors.textPrimary)),
          const SizedBox(height: 8),
          Container(width: 60, height: 4, color: AppColors.primary),
          const SizedBox(height: 12),
          Text(
            '${portfolioSkills.length} competências técnicas e de prática — '
            'mobile, pagamentos, backend e entrega em produção.',
            style: AppFonts.regular(15, AppColors.textSecondary),
          ),
          const SizedBox(height: 32),
          ...skillCategories.map((category) {
            final skills = portfolioSkills.where((s) => s.category == category).toList();
            if (skills.isEmpty) return const SizedBox.shrink();

            return Padding(
              padding: const EdgeInsets.only(bottom: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(category, style: AppFonts.bold(16, AppColors.primary)),
                  const SizedBox(height: 12),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: Responsive.isMobile(context) ? 3.2 : 4.2,
                    ),
                    itemCount: skills.length,
                    itemBuilder: (_, index) => SkillChip(skill: skills[index]),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
