import 'package:flutter/material.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/custom_container.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/custom_text.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/shipping_address_data.dart';
import 'package:open_fashion_app/features/payment/presentation/views/add_shipping_address_view.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddShippingAddressView()),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: "shipping address"),
          SizedBox(height: 10),
          ShippingAddressData(),
          SizedBox(height: 10),
          CustomContainer(text: "Add shipping adress", icon: Icons.add),
        ],
      ),
    );
  }
}
