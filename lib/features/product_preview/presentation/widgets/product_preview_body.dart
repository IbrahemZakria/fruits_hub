import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/entities/product_entity.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/core/utils/widgts/custom_button.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/product_preview/presentation/widgets/cart_operation_icons.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ProductPreviewBody extends StatelessWidget {
  const ProductPreviewBody({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height * .5,
                    decoration: BoxDecoration(
                      color: Thems.lightgray,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(size.width * .4),
                        bottomRight: Radius.circular(size.width * .4),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 18,
                    right: 18,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: FittedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 4,
                              right: 8,
                              top: 4,
                              bottom: 4,
                            ),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * .1,
                    bottom: size.height * .1,
                    right: size.width * .15,
                    left: size.width * .15,
                    child: FittedBox(
                      child: CachedNetworkImage(
                        width: size.width * .14,
                        fit: BoxFit.fitHeight,
                        imageUrl: productEntity.imageUrl!,
                        placeholder: (context, url) => Center(
                          child: CircularProgressIndicator(
                            color: Thems.kprimarycolor,
                          ),
                        ),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(productEntity.name, style: Thems.textStyle16b),
                            SizedBox(height: 16),
                            RichText(
                              text: TextSpan(
                                style: Thems.textStyle13b.copyWith(
                                  color: Thems.orange,
                                ),

                                children: [
                                  TextSpan(
                                    text: productEntity.price.toString(),
                                  ),
                                  TextSpan(text: "جنيه / "),
                                  TextSpan(
                                    text: productEntity.productUnit,
                                    style: Thems.textStyle13b.copyWith(
                                      color: Thems.orange.withValues(alpha: .4),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        CartOperationIcons(productEntity: productEntity),
                      ],
                    ),
                    Text(productEntity.description, style: Thems.textStyle13re),
                    SizedBox(height: 16),
                    CustomButton(
                      onTap: () {
                        context.read<CartCubit>().addProduct(productEntity);
                      },
                      text: S.current.add_to_cart,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
