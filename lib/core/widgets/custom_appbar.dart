import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_fashion_app/core/app_constants.dart';
import 'package:open_fashion_app/core/cubits/theme_cubit/theme_cubit.dart';
import 'package:open_fashion_app/core/helper/app_shared_prefs.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    final bool isDarkMode =
        AppSharedPrefs.loadData(key: AppConstants.kAppThemeKey) as bool? ??
        false;
    return AppBar(
      forceMaterialTransparency: true,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: svgIcon(context, path: "assets/svgs/Menu.svg"),
      ),
      title: svgIcon(context, path: "assets/logo/logo-bg.svg"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: svgIcon(context, path: "assets/svgs/Search.svg"),
        ),
        IconButton(
          onPressed: () {},
          icon: svgIcon(context, path: "assets/svgs/shopping bag.svg"),
        ),
        IconButton(
          onPressed: () {
            themeCubit.toggleTheme(theme: themeCubit.state);
          },
          icon: Icon(isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined),
        ),
      ],
    );
  }

  SvgPicture svgIcon(BuildContext context, {required String path}) {
    return SvgPicture.asset(
      path,
      colorFilter: ColorFilter.mode(
        Theme.of(context).colorScheme.onSurface,
        BlendMode.srcIn,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
