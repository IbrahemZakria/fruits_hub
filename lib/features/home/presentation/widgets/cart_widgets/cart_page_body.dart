import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/widgts/custom_app_bar.dart';
import 'package:fruit_hub/core/utils/widgts/custom_button.dart';
import 'package:fruit_hub/core/utils/widgts/user_message.dart';
import 'package:fruit_hub/features/check_out/presentation/pages/check_out_page.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/widgets/cart_widgets/card_list_view.dart';
import 'package:fruit_hub/core/utils/widgts/custom_divider.dart';
import 'package:fruit_hub/features/home/presentation/widgets/cart_widgets/products_number_text.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: CustomAppBar(titel: S.current.cart),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: ProductsNumberText(
                      number: CartCubit.cartEntity.cartProducts.length,
                    ),
                  ),
                  CartCubit.cartEntity.cartProducts.isNotEmpty
                      ? SliverToBoxAdapter(child: CustomDivider())
                      : SliverToBoxAdapter(child: SizedBox()),
                  CardListView(),
                  CartCubit.cartEntity.cartProducts.isNotEmpty
                      ? SliverToBoxAdapter(child: CustomDivider())
                      : SliverToBoxAdapter(child: SizedBox()),
                ],
              );
            },
          ),
          Positioned(
            right: 16,
            left: 16,
            bottom: MediaQuery.sizeOf(context).height * .05,
            child: CustomButton(
              onTap: () {
                if (CartCubit.cartEntity.cartProducts.isNotEmpty) {
                  Navigator.pushNamed(
                    context,
                    CheckOutPage.routeName,
                    arguments: CartCubit.cartEntity,
                  );
                } else {
                  showUserMessage(message: S.current.cart_is_empty);
                }
              },
              text: S.current.paymentAmount(
                CartCubit.cartEntity.calculateTotalPrice(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
