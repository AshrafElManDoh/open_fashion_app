import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';
import 'package:open_fashion_app/features/home/presentation/views_model/cubit/details_cubit.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.price, this.isTotal = false});
  final double price;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    final detailsCubit = context.watch<DetailsCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Est. Total".toUpperCase(), style: AppStyles.getFont14(context)),
        Text(
          "\$ ${isTotal ? price : detailsCubit.totalPrice(itemPrice: price)}",
          style: AppStyles.getFont16(context).copyWith(color: Colors.green),
        ),
      ],
    );
  }
}
