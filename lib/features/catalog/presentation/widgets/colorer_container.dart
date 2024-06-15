
import 'package:flutter/material.dart';
import 'package:goal_fit/common/app_color.dart';

class ColoredContainer extends StatelessWidget {
  const ColoredContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
      decoration: BoxDecoration(
          color: AppColors.purple, borderRadius: BorderRadius.circular(4)),
      child: child,
    );
  }
}
