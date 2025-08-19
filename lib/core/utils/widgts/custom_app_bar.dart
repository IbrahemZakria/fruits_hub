import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    super.key,
    required this.titel,
    this.notificationVisabilty = true,
    this.arrowbackVisabilty = false,
  });
  final String titel;
  bool notificationVisabilty;
  bool arrowbackVisabilty;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Visibility(
            visible: arrowbackVisabilty,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                width: 11,

                Assets.assetsImagesArrowBack,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                titel,
                style: Thems.textStyle19B.copyWith(color: Colors.black),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Visibility(
              visible: notificationVisabilty,
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
          ),
        ],
      ),
    );
  }
}
