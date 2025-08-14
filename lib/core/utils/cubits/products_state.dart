import 'package:fruit_hub/core/utils/entities/product_entity.dart';

abstract class ProductsState {
  const ProductsState();
}

class ProductsInitial extends ProductsState {}

class ProductsLoadingState extends ProductsState {}

class ProductsFailureState extends ProductsState {
  String errorMessage;

  ProductsFailureState(this.errorMessage);
}

class ProductsSuccessState extends ProductsState {
  List<ProductEntity> products;

  ProductsSuccessState(this.products);
}
