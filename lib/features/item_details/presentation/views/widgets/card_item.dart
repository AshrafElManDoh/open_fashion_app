import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';
import 'package:open_fashion_app/features/home/data/models/product_model.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/quantity_widget.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/spacing_text.dart';
import 'package:open_fashion_app/features/item_details/presentation/views_model/details_cubit/details_cubit.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.product, this.preventClick = false});
  final ProductModel product;
  final bool preventClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(product.image, width: 120),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpacingText(text: product.title, size: 14, spacing: 3),
              SizedBox(height: 10),
              Text(product.description, style: AppStyles.getFont12(context)),
              SizedBox(height: 10),
              QuantityWidget(
                nItems: context.read<DetailsCubit>().nItems,
                preventClick: preventClick,
              ),
              SizedBox(height: 20),
              Text(
                "\$ ${product.price}",
                style: AppStyles.getFont16(
                  context,
                ).copyWith(color: Colors.green),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
