import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/home/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/widgets/cart_widgets/cart_card_widget.dart';
import 'package:fruit_hub/core/utils/widgts/custom_divider.dart';

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CartItemEntity> cartItems = context
        .read<CartCubit>()
        .cartEntity
        .cartProducts;
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return SliverList.separated(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return CartCard(cartItemEntity: cartItems[index]);
          },
          separatorBuilder: (context, index) {
            return CustomDivider();
          },
        );
      },
    );
  }
}
