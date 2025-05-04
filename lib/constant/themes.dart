import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

ThemeData lightMood = ThemeData(
  brightness: Brightness.light,
   cardColor: AppColors.whiteColor,
  colorScheme: ColorScheme.light(
    background: AppColors.whiteColor1
  ),
    iconTheme: const IconThemeData(
    color: AppColors.blackColor,
  ),
   textTheme:  TextTheme(
    bodyLarge: TextStyle(color: AppColors.blackColor),
    bodyMedium: TextStyle(color: AppColors.blackColor),
    titleLarge: TextStyle(color: AppColors.blackColor),
  ),
);

ThemeData darkMood = ThemeData(
  brightness: Brightness.dark,
   cardColor: AppColors.greyColor1,
  colorScheme: ColorScheme.dark(
    background: AppColors.greyColor1,
  ),
  textTheme:  TextTheme(
    bodyLarge: TextStyle(color: AppColors.whiteColor),
    bodyMedium: TextStyle(color: AppColors.whiteColor),
    titleLarge: TextStyle(color: AppColors.whiteColor),
  ),
    iconTheme: const IconThemeData(
    color: AppColors.whiteColor,
  ),
);