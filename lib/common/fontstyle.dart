import 'package:flutter/material.dart';
import 'package:goal_fit/common/app_color.dart';

class AppTextStyles {
  AppTextStyles._();

  ///HBold
  static final normal18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final normal16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final normal14 = TextStyle(
    fontSize: 14,
    height: (18 / 14),
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final normal12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final semiBold12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final regular10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final regular12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final regular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final regular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final semiBold14 = TextStyle(
    fontSize: 14,
    height: (18 / 14),
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final semiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final semiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final semiBold22 = TextStyle(
    fontSize: 22,
    height: (28 / 22),
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final semiBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final bold14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final bold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final bold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final bold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final bold28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final extraBold14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final extraBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final extraBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final extraBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final extraBold28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );
  static final extraBold38 = TextStyle(
    fontSize: 38,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
    fontFamily: AppFontFamilies.opensans,
  );

  static final h1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.5,
    color: AppColors.primaryDark,
    fontFamily: 'Nunito',
  );

  static final regular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryDark,
    fontFamily: 'Nunito',
  );

  static final subinfo = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryDark,
    fontFamily: 'Nunito',
  );

  static final h2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryDark,
    fontFamily: 'Nunito',
  );

  static final h3 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryDark,
    fontFamily: 'Nunito',
  );

  static final primaryButton = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    fontFamily: 'Nunito',
  );

  static final segmentedButtonStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      fontFamily: 'Nunito',
      color: AppColors.tipographyDark);
}

class AppFontFamilies {
  static const opensans = 'OpenSans';
  static const montserrat = 'Montserrat';
}
