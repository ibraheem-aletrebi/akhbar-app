import 'package:akhbar_app/core/style/app_colors.dart';
import 'package:akhbar_app/core/style/app_styles.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(

  fontFamily: AppStyles.fontFamily,

  appBarTheme: AppBarTheme(backgroundColor: AppColors.kPrimaryColor),

  colorScheme: ColorScheme.dark(primary: AppColors.kPrimaryColor),

  textTheme: TextTheme(
    bodyLarge: AppStyles.textStyle32.copyWith(color: AppColors.kPrimaryColor),
    bodyMedium: AppStyles.textStyle16.copyWith(
      // color: AppColors.kSecondaryColor,
      color: Colors.white,
    ),

    headlineLarge: AppStyles.textStyle18.copyWith(color: Colors.white,),
    headlineMedium: AppStyles.textStyle16.copyWith(color: Colors.white,),

    titleLarge: AppStyles.textStyle32.copyWith(color: Colors.white,),
    titleMedium: AppStyles.textStyle18.copyWith(color: Colors.white,),
    titleSmall: AppStyles.textStyle16.copyWith(color: Colors.white,),

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
