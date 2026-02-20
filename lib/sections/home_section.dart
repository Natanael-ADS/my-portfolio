import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_constants.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> with SingleTickerProviderStateMixin {
  static const _boxSize = 400.0;
  static const _animationDuration = Duration(milliseconds: 600);

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
      color: Colors.red,
      height: AppConstants.homeSectionHeight,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Transform.translate(
                  offset: Offset(-_boxSize * (1 - _animation.value), 0),
                  child: Container(width: _boxSize, height: _boxSize, color: Colors.white),
                ),
                Transform.translate(
                  offset: Offset(_boxSize * (1 - _animation.value), 0),
                  child: Container(width: _boxSize, height: _boxSize, color: Colors.black),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
