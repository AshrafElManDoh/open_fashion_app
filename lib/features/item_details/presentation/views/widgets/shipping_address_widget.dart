import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/custom_container.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/custom_text.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/shipping_address_data.dart';
import 'package:open_fashion_app/features/item_details/presentation/views_model/details_cubit/details_cubit.dart';
import 'package:open_fashion_app/features/payment/presentation/views/add_shipping_address_view.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final detailsCubit = context.read<DetailsCubit>();
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (c) => BlocProvider.value(
              value: context.read<DetailsCubit>(),
              child: AddShippingAddressView(),
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: "shipping address"),
          SizedBox(height: 10),
          detailsCubit.savedAddress != null
              ? ShippingAddressData(
                first: detailsCubit.savedAddress['first'],
                last: detailsCubit.savedAddress['last'],
                address: detailsCubit.savedAddress['address'],
                city: detailsCubit.savedAddress['city'],
                phone: detailsCubit.savedAddress['phone'],
              )
              : CustomContainer(text: "Add shipping adress", icon: Icons.add),
        ],
      ),
    );
  }
}
