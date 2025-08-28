import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/entities/product_entity.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/features/home/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/widgets/cart_widgets/cart_icon.dart';

class CartOperationIcons extends StatelessWidget {
  const CartOperationIcons({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    CartItemEntity cartItemEntity = context.watch<CartCubit>().getCartItem(
      productEntity,
    )!;
    return Row(
      children: [
        CartIcon(
          onTap: () {
            context.read<CartCubit>().addProduct(cartItemEntity.productEntity);
          },
        ),
        SizedBox(width: 8),
        Text(
          cartItemEntity.productCount.toString(),
          style: Thems.textStyle13b.copyWith(color: Colors.black),
        ),
        SizedBox(width: 8),

        CartIcon(
          onTap: () {
            context.read<CartCubit>().decreaseproductcount(
              cartItemEntity.productEntity,
            );
          },
          backGroundColor: Thems.lightgray,
          icon: Icons.remove,
          iconColor: Colors.grey,
        ),
      ],
    );
  }
}
