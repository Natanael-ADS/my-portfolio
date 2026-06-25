import 'package:flutter/material.dart';
import 'package:my_portfolio/components/button/app_filled_button.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_constants.dart';
import 'package:my_portfolio/constants/app_fonts.dart';

class HomeUserResume extends StatelessWidget {
  const HomeUserResume({
    super.key,
    required this.widthMax,
    required this.animation,
    this.onContactPressed,
  });

  final double widthMax;
  final Animation<double> animation;
  final VoidCallback? onContactPressed;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: animation,
      builder: (_, _) {
        return Transform.translate(
          offset: Offset(-widthMax * (1 - animation.value), 0),
          child: SizedBox(
            width: widthMax,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Olá, eu sou', style: AppFonts.regular(18, AppColors.textSecondary)),
                const SizedBox(height: 8),
                Text(AppConstants.name, style: AppFonts.black(42, AppColors.textPrimary)),
                const SizedBox(height: 12),
                Text(AppConstants.role, style: AppFonts.bold(22, AppColors.primary)),
                const SizedBox(height: 16),
                Text(
                  AppConstants.tagline,
                  style: AppFonts.regular(16, AppColors.textSecondary),
                ),
                const SizedBox(height: 32),
                AppFilledButton(
                  text: 'Fale comigo',
                  onPressed: onContactPressed ?? () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
