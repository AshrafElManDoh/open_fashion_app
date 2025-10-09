import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';
import 'package:open_fashion_app/features/home/data/models/product_model.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(product.image),
        Text(product.title, style: AppStyles.getFont16(context)),
        Text(
          product.description,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.getFont14(context).copyWith(color: Colors.grey),
        ),
        Text(
          "\$ ${product.price}",
          style: AppStyles.getFont14(context).copyWith(color: Colors.green),
        ),
      ],
    );
  }
}
