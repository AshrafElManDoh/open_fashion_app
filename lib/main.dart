import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/core/app_constants.dart';
import 'package:open_fashion_app/core/cubits/theme_cubit/theme_cubit.dart';
import 'package:open_fashion_app/core/helper/app_shared_prefs.dart';
import 'package:open_fashion_app/core/utils/app_themes.dart';
import 'package:open_fashion_app/features/home/presentation/views/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSharedPrefs.init();
  final bool isDarkMode =
      AppSharedPrefs.loadData(key: AppConstants.kAppThemeKey) as bool? ?? false;
  runApp(
    MyApp(
      initialTheme: isDarkMode
          ? AppThemes.getDarkTheme()
          : AppThemes.getLightTheme(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.initialTheme});
  final ThemeData initialTheme;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(initialTheme),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: state,
            themeAnimationCurve: Curves.easeInOut,
            themeAnimationDuration: Duration(milliseconds: 500),
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
