import 'package:flutter/material.dart';

class HomeUserResume extends StatelessWidget {
  final double widthMax;
  final Animation<double> animation;

  const HomeUserResume({super.key, required this.animation, required this.widthMax});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: animation,
      builder: (_, _) {
        return Transform.translate(
          offset: Offset(-widthMax * (1 - animation.value), 0),
          child: Container(width: widthMax, height: 400, color: Colors.white),
        );
      },
    );
  }
}
