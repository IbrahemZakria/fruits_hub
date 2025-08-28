import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/features/home/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/widgets/cart_widgets/cart_icon.dart';
import 'package:fruit_hub/features/product_preview/presentation/pages/product_preview.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return IntrinsicHeight(
      child: SizedBox(
        height: size.height * .11,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  ProductPreview.routeName,
                  arguments: cartItemEntity.productEntity,
                );
              },
              child: Container(
                width: size.width * .19,
                color: Thems.lightgray,
                child: Center(
                  child: CachedNetworkImage(
                    width: size.width * .14,
                    fit: BoxFit.fitHeight,
                    imageUrl: cartItemEntity.productEntity.imageUrl!,
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(
                        color: Thems.kprimarycolor,
                      ),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          cartItemEntity.productEntity.name,
                          style: Thems.textStyle13b.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            context.read<CartCubit>().removeProduct(
                              cartItemEntity.productEntity,
                            );
                          },
                          child: SvgPicture.asset(Assets.assetsImagesTrash),
                        ),
                      ],
                    ),
                    Text(
                      "${cartItemEntity.productCount.toString()} ${cartItemEntity.productEntity.productUnit}",
                      style: Thems.textStyle13re.copyWith(color: Thems.orange),
                    ),
                    Row(
                      children: [
                        CartIcon(
                          onTap: () {
                            context.read<CartCubit>().addProduct(
                              cartItemEntity.productEntity,
                            );
                          },
                        ),
                        SizedBox(width: 8),
                        Text(
                          cartItemEntity.productCount.toString(),
                          style: Thems.textStyle13b.copyWith(
                            color: Colors.black,
                          ),
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

                        Spacer(),
                        Text(
                          "${cartItemEntity.calculateTotalPrice().toString()}  جنيه",
                          style: Thems.textStyle13b.copyWith(
                            color: Thems.orange,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
