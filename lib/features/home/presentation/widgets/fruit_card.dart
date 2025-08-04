import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/features/home/domain/entities/fruit_entity.dart';

class FruitCard extends StatelessWidget {
  final FruitEntity fruit;

  const FruitCard({super.key, required this.fruit});

  @override
  Widget build(BuildContext context) {
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
            bottom: -15,
            right: 15,
            left: 15,
            child: SvgPicture.asset(
              Assets.assetsImagesOnBoardingImage1,
              fit: BoxFit.contain,
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
