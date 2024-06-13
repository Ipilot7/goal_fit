import 'package:flutter/material.dart';

class AppColors {
  //device
  static Color transparent = Colors.transparent;
  static Color white = const Color.fromRGBO(255, 255, 255, 1);
  static Color black = Colors.black;
  static Color grey = Colors.grey;
  static Color blue = const Color(0xff4EB4FF);
  static Color red = Colors.red.shade500;
  static Color green = const Color(0xff00EB86);

}

class AppShadow {
  static Shadow get defShadow => Shadow(
        color: AppColors.black.withOpacity(0.5),
        blurRadius: 3.0,
        offset: const Offset(0, 0),
      );
}
