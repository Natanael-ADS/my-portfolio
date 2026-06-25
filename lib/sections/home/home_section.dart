import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_constants.dart';
import 'package:my_portfolio/sections/home/components/home_user_photo.dart';
import 'package:my_portfolio/sections/home/components/home_user_resume.dart';
import 'package:my_portfolio/utils/responsive.dart';

const _widthMax = 500.0;
const _circleSize = 400.0;

class HomeSection extends StatefulWidget {
  const HomeSection({super.key, this.onContactPressed});

  final VoidCallback? onContactPressed;

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> with SingleTickerProviderStateMixin {
  static const _animationDuration = Duration(milliseconds: 900);

  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _animationDuration);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeOutBack);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      alignment: Alignment.center,
      height: AppConstants.homeSectionHeight,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: AppConstants.desktopBreakpoint),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? AppConstants.paddingSmall : AppConstants.paddingLarge,
          ),
          child: isMobile
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeUserResume(
                      animation: _animation,
                      widthMax: double.infinity,
                      onContactPressed: widget.onContactPressed,
                    ),
                    const SizedBox(height: 24),
                    HomeUserPhoto(
                      animation: _animation,
                      circleSize: 280,
                      widthMax: 280,
                    ),
                  ],
                )
              : Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeUserResume(
                      animation: _animation,
                      widthMax: _widthMax,
                      onContactPressed: widget.onContactPressed,
                    ),
                    HomeUserPhoto(
                      animation: _animation,
                      circleSize: _circleSize,
                      widthMax: _widthMax,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
