import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:open_fashion_app/core/widgets/custom_appbar.dart';
import 'package:open_fashion_app/core/widgets/custom_button.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/header.dart';
import 'package:open_fashion_app/features/item_details/presentation/views_model/details_cubit/details_cubit.dart';
import 'package:open_fashion_app/features/payment/data/models/card_model.dart';

class AddCreditCardView extends StatefulWidget {
  const AddCreditCardView({super.key, this.card});
  final CardModel? card;

  @override
  State<AddCreditCardView> createState() => _AddCreditCardViewState();
}

class _AddCreditCardViewState extends State<AddCreditCardView> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  CardType? cardType;
  bool isShowBackView = true;
  final _key = GlobalKey<FormState>();

  @override
  void initState() {
    if (widget.card == null) {
    } else {
      cardNumber = widget.card!.cardNumber;
      expiryDate = widget.card!.expiryDate;
      cardHolderName = widget.card!.cardHolderName;
      cvvCode = widget.card!.cvvCode;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Header(title: "Payment method"),
            SizedBox(height: 20),
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isShowBackView,
              isHolderNameVisible: true,
              cardBgColor: Colors.black,
              obscureCardNumber: false,
              obscureCardCvv: false,
              onCreditCardWidgetChange: (creditCardBrand) {
                cardType = creditCardBrand.brandName;
              },
            ),
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              isCardHolderNameUpperCase: true,
              cvvCode: cvvCode,
              onCreditCardModelChange: (model) {
                setState(() {
                  cardNumber = model.cardNumber;
                  expiryDate = model.expiryDate;
                  cardHolderName = model.cardHolderName;
                  cvvCode = model.cvvCode;
                  isShowBackView = model.isCvvFocused;
                });
              },
              formKey: _key,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomButton(
        onTap: () {
          context.read<DetailsCubit>().card = CardModel(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            cardType: cardType!.name,
          );
          Navigator.pop(context);
        },
        title: "Add Card",
      ),
    );
  }
}
