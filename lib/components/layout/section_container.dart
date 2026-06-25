import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_constants.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
  });

  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: AppConstants.desktopBreakpoint),
        child: Padding(padding: padding, child: child),
      ),
    );
  }
}
