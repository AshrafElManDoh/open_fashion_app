import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class IconsWidget extends StatelessWidget {
  const IconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ionIconButton(context,icon: Ionicons.logo_twitter),
        ionIconButton(context,icon: Ionicons.logo_facebook),
        ionIconButton(context,icon: Ionicons.logo_instagram),
      ],
    );
  }

  IconButton ionIconButton(BuildContext context,{required IconData icon}) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      );
  }

  
}
