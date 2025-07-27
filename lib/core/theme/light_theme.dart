import 'package:akhbar_app/core/style/app_colors.dart';
import 'package:akhbar_app/core/style/app_styles.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: AppStyles.fontFamily,

  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.kPrimaryColor,
    foregroundColor: Colors.white,
  ),

  colorScheme: ColorScheme.light(primary: AppColors.kPrimaryColor),

  textTheme: TextTheme(
    bodyLarge: AppStyles.textStyle32.copyWith(color: AppColors.kPrimaryColor),
    bodyMedium: AppStyles.textStyle16.copyWith(
      color: AppColors.kSecondaryColor,
    ),

    headlineLarge: AppStyles.textStyle18,
    headlineMedium: AppStyles.textStyle16,

    titleLarge: AppStyles.textStyle32,
    titleMedium: AppStyles.textStyle18,
    titleSmall: AppStyles.textStyle16,

    bodySmall: AppStyles.textStyle12.copyWith(color: AppColors.kSecondaryColor),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(8),
      ),
      backgroundColor: AppColors.kPrimaryColor,
      foregroundColor: Color(0xFFFFFFFF),
    ),
  ),
);
