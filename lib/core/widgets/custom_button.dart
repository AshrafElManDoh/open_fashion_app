import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.title});
  final Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(color: colorScheme.onSurface),
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: AppStyles.getFont16(
              context,
            ).copyWith(color: colorScheme.surface),
          ),
        ),
      ),
    );
  }
}
