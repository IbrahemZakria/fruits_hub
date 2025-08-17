import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fruit_hub/core/utils/entities/product_entity.dart';
import 'package:fruit_hub/features/home/domain/entities/cart_entity.dart';
import 'package:fruit_hub/features/home/domain/entities/cart_item_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartEntity cartEntity = CartEntity([]);
  addProduct(ProductEntity product) {
    cartEntity.addProduct(product: product);

    emit(AddProductToCartState(cartsItems: cartEntity.cartProducts));
    log(cartEntity.cartProducts[0].productEntity.name);
  }

  decreaseproductcount(ProductEntity product) {
    cartEntity.decreaseProductCount(product: product);
    emit(RemovrProductFromCartState(cartsItems: cartEntity.cartProducts));
  }

  removeProduct(ProductEntity product) {
    cartEntity.removeProductCart(product: product);
    emit(RemovrProductFromCartState(cartsItems: cartEntity.cartProducts));
  }
}
