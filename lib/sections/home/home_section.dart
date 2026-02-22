import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_constants.dart';
import 'package:my_portfolio/sections/home/components/home_user_photo.dart';
import 'package:my_portfolio/sections/home/components/home_user_resume.dart';

const _widthMax = 500.0;
const _circleSize = 400.0;

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

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
    return Container(
      alignment: Alignment.center,
      height: AppConstants.homeSectionHeight,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: AppConstants.desktopBreakpoint),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeUserResume(
                animation: _animation,
                widthMax: _widthMax,
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
