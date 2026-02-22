import 'dart:math';

import 'package:flutter/material.dart';

class PhotoCircleBottomCustomerClipper extends CustomClipper<Path> {
  final double imageWidth;
  final double imageHeight;
  final double circleRadius;

  PhotoCircleBottomCustomerClipper({
    required this.imageWidth,
    required this.imageHeight,
    required this.circleRadius,
  });

  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;

    final centerY = height - circleRadius;
    final center = Offset(width / 2, centerY);
    final topOfCircle = centerY - circleRadius;

    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(width, 0);
    path.lineTo(width, topOfCircle);
    path.lineTo(width, center.dy);

    path.arcTo(Rect.fromCircle(center: center, radius: circleRadius), 0, pi, false);

    path.lineTo(0, topOfCircle);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
