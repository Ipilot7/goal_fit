import 'package:flutter/material.dart';
import 'package:goal_fit/common/all_contants.dart';

class AppButtonStyles {
  static ButtonStyle primaryButton = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(AppColors.primaryPurple),
    fixedSize: const MaterialStatePropertyAll(Size(double.infinity, 44)),
    foregroundColor: MaterialStatePropertyAll(AppColors.white),
    textStyle: MaterialStatePropertyAll<TextStyle?>(
      TextStyle(
        fontFamily: 'Nunito',
        color: AppColors.white,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
    shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)))),
    overlayColor: MaterialStatePropertyAll(AppColors.primaryPurpleHover),
  );

  static ButtonStyle secondaryButton = ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(AppColors.primaryPurpleLight),
      fixedSize: const MaterialStatePropertyAll(Size(double.infinity, 44)),
      foregroundColor: MaterialStatePropertyAll(AppColors.white),
      textStyle: MaterialStatePropertyAll<TextStyle?>(
        TextStyle(
          fontFamily: 'Nunito',
          color: AppColors.primaryPurple,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)))),
      overlayColor: MaterialStatePropertyAll(AppColors.primaryPurpleLightHover));

  static ButtonStyle segementedButton = ButtonStyle(
    shape: MaterialStatePropertyAll(LinearBorder.none),
  );
}
