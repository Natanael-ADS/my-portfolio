import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_constants.dart';

const _widthMax = 500.0;

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
        child: AnimatedBuilder(
          animation: _animation,
          builder: (_, _) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _HomeUserResume(animation: _animation),
                  _HomeUserPhoto(animation: _animation),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _HomeUserResume extends StatelessWidget {
  final Animation<double> animation;

  const _HomeUserResume({required this.animation});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-_widthMax * (1 - animation.value), 0),
      child: Container(width: 500, height: 400, color: Colors.white),
    );
  }
}

class _HomeUserPhoto extends StatelessWidget {
  final Animation<double> animation;

  const _HomeUserPhoto({required this.animation});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Transform.translate(
          offset: Offset(0, _widthMax * (1 - animation.value)),
          child: Transform.scale(
            scale: animation.value,
            alignment: Alignment.center,
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(_widthMax * (1 - animation.value), 0),
          child: Container(
            width: 350,
            height: 480,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(170),
            ),
          ),
        ),
      ],
    );
  }
}
