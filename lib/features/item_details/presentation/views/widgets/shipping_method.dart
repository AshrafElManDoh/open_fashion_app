import 'package:flutter/material.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/custom_container.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/custom_text.dart';

class ShippingMethod extends StatelessWidget {
  const ShippingMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: "Shipping Method"),
        SizedBox(height: 10),
        CustomContainer(
          text: "Pickup at store",
          isFree: true,
          icon: Icons.keyboard_arrow_down,
        ),
      ],
    );
  }
}
