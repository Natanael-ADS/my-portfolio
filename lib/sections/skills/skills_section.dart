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
          const SizedBox(height: 32),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: Responsive.isMobile(context) ? 3.5 : 4,
            ),
            itemCount: portfolioSkills.length,
            itemBuilder: (_, index) => SkillChip(skill: portfolioSkills[index]),
          ),
        ],
      ),
    );
  }
}
