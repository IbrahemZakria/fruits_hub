import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';

class CustomeCheckBox extends StatelessWidget {
  const CustomeCheckBox({
    super.key,
    required this.isactive,
    required this.oncheck,
  });
  final bool isactive;
  final ValueChanged<bool> oncheck;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log(isactive.toString());
        oncheck(!isactive);
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 100),
        child: isactive
            ? Container(
                decoration: BoxDecoration(
                  color: Thems.kprimarycolor,
                  borderRadius: BorderRadius.circular(6),
                  border: BoxBorder.all(color: Colors.transparent),
                ),
                padding: EdgeInsets.all(4),
                child: SvgPicture.asset(Assets.assetsImagesWrightCheckBox),
              )
            : Container(
                decoration: BoxDecoration(
                  border: BoxBorder.all(color: Thems.lightgray),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: EdgeInsets.all(4),
                child: SvgPicture.asset(Assets.assetsImagesWrightCheckBox),
              ),
      ),
    );
  }
}
