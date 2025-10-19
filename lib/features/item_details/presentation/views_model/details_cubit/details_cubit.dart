import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/features/payment/data/models/card_model.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());

  int nItems = 1;
  double totalPriceVar = 0;
  dynamic savedAddress;
  CardModel? card;
  double totalPrice({required double itemPrice}) {
    totalPriceVar = itemPrice * nItems;
    emit(TotalPriceChanged());
    return totalPriceVar;
  }

  void reset() {
    nItems = 1;
    totalPriceVar = 0;
  }
}
