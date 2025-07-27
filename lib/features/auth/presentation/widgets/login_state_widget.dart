import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/thems.dart';

// دى بتاعه طريقه التسجيل زى جوجل و ابل وفيسبوك
class LoginStateWidget extends StatelessWidget {
  const LoginStateWidget({
    super.key,
    required this.image,
    required this.title,
    required this.onPressed,
  });
  final String image, title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          titleTextStyle: Thems.textStyle16sb,
          title: Text(title, textAlign: TextAlign.center),
          leading: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
