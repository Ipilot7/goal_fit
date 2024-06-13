import 'package:flutter/material.dart';
import 'package:goal_fit/common/all_contants.dart';

class AppButtonStyles {
  static ButtonStyle primaryButton = ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.primaryPurple),
      fixedSize: const WidgetStatePropertyAll(Size(double.infinity, 44)),
      foregroundColor: WidgetStatePropertyAll(AppColors.white),
      textStyle: WidgetStatePropertyAll<TextStyle?>(
        TextStyle(
          fontFamily: 'Nunito',
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)))),
      overlayColor: WidgetStatePropertyAll(AppColors.primaryPurpleHover));
}
