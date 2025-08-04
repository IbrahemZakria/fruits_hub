import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(
        Assets.assetsImagesPersonImage,
        fit: BoxFit.fill,
      ),
      title: Text("data"),
      titleTextStyle: Thems.textStyle16reg,
      subtitle: Text("data"),
      subtitleTextStyle: Thems.textStyle16b,
      trailing: CircleAvatar(
        radius: 34,

        backgroundColor: Color(0xffEEF8ED),
        child: SvgPicture.asset(
          width: 34,

          Assets.assetsImagesNotificationIcon,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
