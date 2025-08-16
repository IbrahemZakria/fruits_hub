import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          SvgPicture.asset(Assets.assetsImagesPersonImage, fit: BoxFit.fill),
          SizedBox(width: 11),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.current.goodMorning, style: Thems.textStyle16reg),
                // Text(getUserData().name, style: Thems.textStyle16b),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 25,

              backgroundColor: Color(0xffEEF8ED),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: SvgPicture.asset(
                  width: 34,

                  Assets.assetsImagesNotificationIcon,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
