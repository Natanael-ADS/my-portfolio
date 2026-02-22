import 'package:flutter/material.dart';
import 'package:my_portfolio/components/clip/photo_circle_bottom_customer_clipper.dart';
import 'package:my_portfolio/constants/app_assets.dart';
import 'package:my_portfolio/constants/app_colors.dart';

class HomeUserPhoto extends StatelessWidget {
  static const _photoWidth = 375.0 * 0.7;
  static const _photoHeight = 700.0 * 0.7;

  final double widthMax;
  final double circleSize;
  final Animation<double> animation;

  const HomeUserPhoto({
    super.key,
    required this.animation,
    required this.circleSize,
    required this.widthMax,
  });

  @override
  Widget build(BuildContext context) {
    final circleRadius = circleSize / 2;

    return ListenableBuilder(
      listenable: animation,
      builder: (_, _) {
        return SizedBox(
          width: circleSize,
          height: _photoHeight,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Transform.translate(
                offset: Offset(0, widthMax * (1 - animation.value)),
                child: Transform.scale(
                  scale: animation.value,
                  alignment: Alignment.center,
                  child: Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          AppColors.primaryLight,
                          AppColors.primaryDark,
                          AppColors.primaryDark,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Imagem: parte de cima fora do círculo, parte de baixo recortada pelo círculo
              Transform.translate(
                offset: Offset(widthMax * (1 - animation.value), 0),
                child: ClipPath(
                  clipper: PhotoCircleBottomCustomerClipper(
                    circleRadius: circleRadius,
                    imageWidth: _photoWidth,
                    imageHeight: _photoHeight,
                  ),
                  child: Image.asset(
                    AppAssets.homePhoto,
                    width: _photoWidth,
                    height: _photoHeight,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
