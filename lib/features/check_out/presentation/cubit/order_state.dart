part of 'order_cubit.dart';

abstract class OrderState {
  const OrderState();
}

class OrderInitial extends OrderState {}

class AddOrderSuccessstate extends OrderState {}

class AddOrderLoadingstate extends OrderState {}

class AddOrderFailurestate extends OrderState {
  final String errorMessage;

  AddOrderFailurestate({required this.errorMessage});
}
