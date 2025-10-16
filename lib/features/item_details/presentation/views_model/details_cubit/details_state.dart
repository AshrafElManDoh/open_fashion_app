part of 'details_cubit.dart';

@immutable
sealed class DetailsState {}

final class DetailsInitial extends DetailsState {}
final class TotalPriceChanged extends DetailsState {}
