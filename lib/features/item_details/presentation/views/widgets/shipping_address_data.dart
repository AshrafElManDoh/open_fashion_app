import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';

class ShippingAddressData extends StatelessWidget {
  const ShippingAddressData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Iris Watson",
          style: AppStyles.getFont18(context).copyWith(
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "606-3727 Ullamcorper. Street",
                  style: AppStyles.getFont14(
                    context,
                  ).copyWith(fontWeight: FontWeight.w400, color: Colors.grey),
                ),
                Text(
                  "Roseville NH 11523",
                  style: AppStyles.getFont14(
                    context,
                  ).copyWith(fontWeight: FontWeight.w400, color: Colors.grey),
                ),
                Text(
                  "(786) 713-8616",
                  style: AppStyles.getFont14(
                    context,
                  ).copyWith(fontWeight: FontWeight.w400, color: Colors.grey),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ],
    );
  }
}
