import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: AppStyles.getFont14(context).copyWith(color: Colors.grey),
    );
  }
}
