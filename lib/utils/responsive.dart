import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class Responsive {
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < AppConstants.mobileBreakpoint;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= AppConstants.mobileBreakpoint &&
      MediaQuery.of(context).size.width < AppConstants.tabletBreakpoint;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= AppConstants.tabletBreakpoint;

  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  /// Retorna um valor baseado no tamanho da tela
  static T valueWhen<T>({required BuildContext context, required T mobile, T? tablet, required T desktop}) {
    if (isDesktop(context)) return desktop;
    if (isTablet(context)) return tablet ?? desktop;
    return mobile;
  }
}
