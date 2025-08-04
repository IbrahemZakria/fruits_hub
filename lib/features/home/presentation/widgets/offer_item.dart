import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      width: double.infinity,
      height: size.height * .2,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(Assets.assetsImagesLogo, fit: BoxFit.fill),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: size.width * .5,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.elliptical(size.width * .15, size.height * .2),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: size.width * .05,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Special Offer', style: Thems.textStyle13re),
                Text('Special Offer', style: Thems.textStyle19B),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 27, vertical: 2),
                  child: Text('Special Offer', style: Thems.textStyle13b),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
