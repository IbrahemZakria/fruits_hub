import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            padding: EdgeInsets.all(size.height * .02), // سمك الـ border
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Thems.lightgray, // لون الـ border
                width: 1, // سمكه
              ),
            ),
            child: SvgPicture.asset(Assets.assetsImagesArrowBack),
          ),
        ),
        Text("data", style: Thems.textStyle19B.copyWith(color: Colors.black)),
        CircleAvatar(
          radius: size.height * .02,

          backgroundColor: Color(0xffEEF8ED),
          child: SvgPicture.asset(
            height: size.height * .025,

            Assets.assetsImagesNotificationIcon,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
