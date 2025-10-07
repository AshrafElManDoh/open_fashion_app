import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/app_colors.dart';

final ThemeData darkTheme = ThemeData(
  fontFamily: "TenorSans",
  scaffoldBackgroundColor: const Color(AppColors.darkBackground),
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(AppColors.darkPrimary),
    onPrimary: Color(AppColors.darkOnPrimary),
    secondary: Color(AppColors.darkSecondary),
    onSecondary: Color(AppColors.darkOnSecondary),
    error: Color(AppColors.darkError),
    onError: Color(AppColors.darkOnError),
    surface: Color(AppColors.darkSurface),
    onSurface: Color(AppColors.darkOnSurface),
    primaryContainer: Color(AppColors.darkPrimaryVariant),
    secondaryContainer: Color(AppColors.darkSecondaryVariant),
  ),
  appBarTheme: const AppBarTheme(
    // backgroundColor: Color(AppColors.darkPrimary),
    iconTheme: IconThemeData(color: Color(AppColors.darkOnSurface)),
    titleTextStyle: TextStyle(
      color: Color(AppColors.darkOnSurface),
      fontSize: 20,
      fontFamily: "TenorSans",
      fontWeight: FontWeight.w600,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(AppColors.darkSecondary),
    foregroundColor: Color(AppColors.darkOnSecondary),
  ),
);
