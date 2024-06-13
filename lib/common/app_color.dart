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

  static Color primaryDark = const Color(0xff10052d);
  static Color primaryLight = const Color(0xfff9f9fa);
  static Color primaryPurple = const Color(0xff6526c9);
  static Color primaryPurpleHover = const Color(0xff490e94);
  static Color primaryPurpleLight = const Color(0xffede9fc);
  static Color primaryPurpleLightHover = const Color(0xffe2def0);
  static Color tipographyLight = const Color(0xffd8d8e1);
}

class AppShadow {
  static Shadow get defShadow => Shadow(
        color: AppColors.black.withOpacity(0.5),
        blurRadius: 3.0,
        offset: const Offset(0, 0),
      );
}
