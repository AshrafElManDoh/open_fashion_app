import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  fontFamily: "TenorSans",
  scaffoldBackgroundColor: Color(AppColors.background),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(AppColors.primary),
    onPrimary: Color(AppColors.onPrimary),
    secondary: Color(AppColors.secondary),
    onSecondary: Color(AppColors.onSecondary),
    error: Color(AppColors.error),
    onError: Color(AppColors.onError),
    surface: Color(AppColors.surface),
    onSurface: Color(AppColors.onSurface),
    primaryContainer: Color(AppColors.primaryVariant),
    secondaryContainer: Color(AppColors.secondaryVariant),
  ),
  appBarTheme: const AppBarTheme(
    // backgroundColor: Color(AppColors.primary),
    iconTheme: IconThemeData(color: Color(AppColors.onSurface)),
    titleTextStyle: TextStyle(
      color: Color(AppColors.onSurface),
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: "TenorSans",
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(AppColors.secondary),
    foregroundColor: Color(AppColors.onSecondary),
  ),
);
