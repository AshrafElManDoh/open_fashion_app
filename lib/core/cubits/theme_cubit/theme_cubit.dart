import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/core/app_constants.dart';
import 'package:open_fashion_app/core/helper/app_shared_prefs.dart';
import 'package:open_fashion_app/core/utils/app_themes.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit(this.initialTheme) : super(initialTheme);
  final ThemeData initialTheme ;

  toggleTheme({required ThemeData theme}) {
    ThemeData newTheme = theme == AppThemes.getDarkTheme()
        ? AppThemes.getLightTheme()
        : AppThemes.getDarkTheme();
    emit(newTheme);
    cache(newTheme);
  }

  cache(ThemeData theme) {
    AppSharedPrefs.saveData(
      key: AppConstants.kAppThemeKey,
      value: theme == AppThemes.getDarkTheme(),
    );
  }
}
