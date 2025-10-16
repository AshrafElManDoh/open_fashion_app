import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());

  int nItems = 1;
  double totalPriceVar = 0;
  double totalPrice({required double itemPrice}) {
    totalPriceVar = itemPrice * nItems;
    emit(TotalPriceChanged());
    return totalPriceVar;
  }

  void reset() {
    nItems = 1;
  }
}
