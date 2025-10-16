import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/core/widgets/custom_appbar.dart';
import 'package:open_fashion_app/core/widgets/custom_button.dart';
import 'package:open_fashion_app/features/item_details/presentation/views_model/details_cubit/details_cubit.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/header.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/payment_method.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/shipping_address_widget.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/shipping_method.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/total_price.dart';

class PlaceOrderView extends StatelessWidget {
  const PlaceOrderView({super.key});

  @override
  Widget build(BuildContext context) {
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
                SizedBox(height: 20),
                ShippingMethod(),
                SizedBox(height: 20),
                PaymentMethod(),
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
          CustomButton(onTap: () {}, title: "Place order"),
        ],
      ),
    );
  }
}
