import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';
import 'package:open_fashion_app/features/item_details/presentation/views_model/details_cubit/details_cubit.dart';
import 'package:open_fashion_app/features/payment/data/models/card_model.dart';
import 'package:open_fashion_app/features/payment/presentation/views/add_credit_card_view.dart';

class PaymentData extends StatelessWidget {
  const PaymentData({super.key, required this.card});
  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: Colors.grey,),
        SizedBox(height: 5),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (c) => BlocProvider.value(
                  value: context.read<DetailsCubit>(),
                  child: AddCreditCardView(
                    card: context.read<DetailsCubit>().card,
                  ),
                ),
              ),
            );
          },
          child: Row(
            children: [
              Icon(Icons.credit_card, size: 60),
              SizedBox(width: 10),
              Text(
                "${card.cardType} ****${card.cardNumber.substring(card.cardNumber.length - 2)}",
                style: AppStyles.getFont16(context),
              ),
              Spacer(),
              Icon(Icons.keyboard_arrow_right_outlined),
            ],
          ),
        ),
        SizedBox(height: 5),
        Divider(color: Colors.grey,),
      ],
    );
  }
}
