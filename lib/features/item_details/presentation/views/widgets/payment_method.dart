import 'package:flutter/material.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/custom_container.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/custom_text.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: "Payment method"),
        SizedBox(height: 10),
        CustomContainer(
          text: "select payment method",
          icon: Icons.keyboard_arrow_down,
        ),
      ],
    );
  }
}