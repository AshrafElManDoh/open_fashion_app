import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';
import 'package:open_fashion_app/features/item_details/presentation/views_model/details_cubit/details_cubit.dart';
import 'package:open_fashion_app/features/payment/presentation/views/add_shipping_address_view.dart';

class ShippingAddressData extends StatelessWidget {
  const ShippingAddressData({
    super.key,
    required this.first,
    required this.last,
    required this.address,
    required this.city,
    required this.phone,
  });
  final String first, last, address, city, phone;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final data = context.read<DetailsCubit>().savedAddress;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (c) => BlocProvider.value(
              value: context.read<DetailsCubit>(),
              child: AddShippingAddressView(
                first: data['first'],
                last: data['last'],
                address: data['address'],
                city: data['city'],
                zipCode: data['zip'],
                state: data['state'],
                phone: data['phone'],
              ),
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$first $last",
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
                    city,
                    style: AppStyles.getFont14(
                      context,
                    ).copyWith(fontWeight: FontWeight.w400, color: Colors.grey),
                  ),
                  Text(
                    address,
                    style: AppStyles.getFont14(
                      context,
                    ).copyWith(fontWeight: FontWeight.w400, color: Colors.grey),
                  ),
                  Text(
                    phone,
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
      ),
    );
  }
}
