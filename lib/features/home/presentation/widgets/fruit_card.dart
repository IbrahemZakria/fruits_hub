import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/entities/product_entity.dart';
import 'package:fruit_hub/core/utils/thems.dart';

class FruitCard extends StatelessWidget {
  final ProductEntity fruit;

  const FruitCard({super.key, required this.fruit});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Thems.lightgray,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            right: 5,
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                Assets.assetsImagesHeart,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            bottom: size.height * .085,
            top: size.height * .03,
            right: size.height * .035,
            left: size.height * .035,
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: fruit.imageUrl!,
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(color: Thems.kprimarycolor),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(height: 24),
          Positioned(
            bottom: .51,
            left: 5,
            right: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        fruit.name,
                        style: Thems.textStyle13SB.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),

                      RichText(
                        text: TextSpan(
                          style: Thems.textStyle13b.copyWith(
                            color: Thems.orange,
                          ),

                          children: [
                            TextSpan(text: "${fruit.price}"),
                            TextSpan(text: "جنيه"),
                            TextSpan(
                              text: "  / الكيلو",
                              style: Thems.textStyle13b.copyWith(
                                color: Thems.orange.withValues(alpha: .4),
                              ),
                            ),
                          ],
                          // text: "${fruit.price}  / الكيلو",

                          // Add more children TextSpans here if needed
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: Thems.kprimarycolor,
                    radius: 18,
                    child: SvgPicture.asset(
                      Assets.assetsImagesPlus,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
