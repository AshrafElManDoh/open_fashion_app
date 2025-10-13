import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.text,
    this.isFree = false,
    required this.icon,
  });
  final String text;
  final IconData icon;
  final bool isFree;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color(0xffF9F9F9),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: AppStyles.getFont16(
              context,
            ).copyWith(fontWeight: FontWeight.w400, color: Color(0xff555555)),
          ),
          Spacer(),
          isFree
              ? Text(
                  "Free",
                  style: AppStyles.getFont16(context).copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff555555),
                  ),
                )
              : SizedBox.shrink(),
          SizedBox(width: 20),
          Icon(icon, color: Color(0xff555555)),
        ],
      ),
    );
  }
}
