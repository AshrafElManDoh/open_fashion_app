import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/core/widgets/custom_appbar.dart';
import 'package:open_fashion_app/core/widgets/custom_button.dart';
import 'package:open_fashion_app/features/home/data/models/product_model.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/card_item.dart';
import 'package:open_fashion_app/features/item_details/presentation/views_model/details_cubit/details_cubit.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/header.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/payment_method.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/shipping_address_widget.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/shipping_method.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/total_price.dart';
import 'package:open_fashion_app/features/payment/presentation/views/widgets/custom_dialog.dart';

class PlaceOrderView extends StatelessWidget {
  const PlaceOrderView({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final isAlltrue =
        context.read<DetailsCubit>().savedAddress != null &&
        context.read<DetailsCubit>().card != null;
    return Scaffold(
      appBar: CustomAppbar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 20),
                Header(title: "Checkout"),
                SizedBox(height: 20),
                ShippingAddressWidget(),
                !isAlltrue ? SizedBox(height: 20) : SizedBox.shrink(),
                !isAlltrue ? ShippingMethod() : SizedBox.shrink(),
                SizedBox(height: 20),
                PaymentMethod(),
                isAlltrue
                    ? CardItem(product: product, preventClick: true)
                    : SizedBox.shrink(),
              ],
            ),
          ),
          Spacer(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TotalPrice(
              price: context.watch<DetailsCubit>().totalPriceVar,
              isTotal: true,
            ),
          ),
          CustomButton(
            onTap: () {
              if (isAlltrue) {
                showDialog(
                  context: context,
                  builder: (c) => BlocProvider.value(
                    value: context.read<DetailsCubit>(),
                    child: Dialog(child: const CustomDialog()),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Please enter your data"),
                    margin: EdgeInsets.only(bottom: 80, left: 20, right: 20),
                    backgroundColor: Theme.of(context).colorScheme.onSurface,
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            },
            title: "Place order",
          ),
        ],
      ),
    );
  }
}
