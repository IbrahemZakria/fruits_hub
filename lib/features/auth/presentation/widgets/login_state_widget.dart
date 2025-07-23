import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        onPressed: () {},
        child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          title: Text(title, textAlign: TextAlign.center),
          leading: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
