import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/helper/function/navigate_page.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CustomPageViewItem extends StatelessWidget {
  const CustomPageViewItem({
    super.key,
    required this.image,
    required this.index,
    required this.backgroundImage,
    required this.titel,
    required this.describtion,
  });
  final String image, backgroundImage, titel, describtion;
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: size.height * .5,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  right: 0,
                  left: 0,
                  child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: SvgPicture.asset(image),
                ),

                Visibility(
                  visible: index == 0,
                  child: Positioned(
                    right: 24,
                    top: 24,
                    child: TextButton(
                      onPressed: () {
                        NavigatePage.addOnBoardingState();

                        Navigator.pushReplacementNamed(
                          context,
                          NavigatePage.routeName(),
                        );
                      },
                      child: Text(S.of(context).skip),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 64),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(titel, style: Thems.textStyle23B),
              if (index == 0) ...[
                Text(
                  "HUB",
                  style: Thems.textStyle23B.copyWith(color: Thems.orange),
                ),
                Text(
                  "Fruit",
                  style: Thems.textStyle23B.copyWith(
                    color: Thems.kprimarycolor,
                  ),
                ),
              ],
            ],
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Text(
              textAlign: TextAlign.center,
              describtion,
              style: Thems.textStyle13SB,
            ),
          ),
        ],
      ),
    );
  }
}
