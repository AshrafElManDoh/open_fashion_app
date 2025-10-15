import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title,this.spacing =10});
  final String title;
  final double spacing ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title.toUpperCase(),
          style: AppStyles.getFont18(context).copyWith(
            letterSpacing: spacing,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 10),
        Image.asset("assets/svgs/line.png", width: 160, color: Colors.grey),
      ],
    );
  }
}
