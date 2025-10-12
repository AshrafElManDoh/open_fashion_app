import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';
import 'package:open_fashion_app/core/widgets/custom_appbar.dart';
import 'package:open_fashion_app/core/widgets/custom_button.dart';
import 'package:open_fashion_app/features/home/data/models/product_model.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/card_item.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/header.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/optional_widget.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                SizedBox(height: 20),
                Header(title: "checkout"),
                SizedBox(height: 20),
                CardItem(product: product),
                SizedBox(height: 20),
                Divider(),
                OptionalWidget(
                  title: "Add promo code",
                  imagePath: "assets/svgs/promo.svg",
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OptionalWidget(
                      title: "Delivery",
                      imagePath: "assets/svgs/delivery.svg",
                    ),
                    Text("Free"),
                  ],
                ),
                Divider(),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Est. Total".toUpperCase(),
                  style: AppStyles.getFont14(context),
                ),
                Text(
                  "\$ ${product.price}",
                  style: AppStyles.getFont16(
                    context,
                  ).copyWith(color: Colors.green),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          CustomButton(onTap: () {}, title: "checkout"),
        ],
      ),
    );
  }
}
