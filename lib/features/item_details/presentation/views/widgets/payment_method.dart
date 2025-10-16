import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/custom_container.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/custom_text.dart';
import 'package:open_fashion_app/features/item_details/presentation/views_model/details_cubit/details_cubit.dart';
import 'package:open_fashion_app/features/payment/presentation/views/add_credit_card_view.dart';
import 'package:open_fashion_app/features/payment/presentation/views/widgets/payment_data.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: "Payment method"),
        SizedBox(height: 10),
        context.read<DetailsCubit>().card == null
            ? GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => BlocProvider.value(
                        value: context.read<DetailsCubit>(),
                        child: AddCreditCardView(),
                      ),
                    ),
                  );
                },
                child: CustomContainer(
                  text: "select payment method",
                  icon: Icons.keyboard_arrow_down,
                ),
              )
            : PaymentData(card: context.read<DetailsCubit>().card!),
      ],
    );
  }
}
