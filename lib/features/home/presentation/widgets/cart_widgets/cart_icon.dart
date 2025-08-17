import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/thems.dart';

// ignore: must_be_immutable
class CartIcon extends StatelessWidget {
  CartIcon({
    super.key,
    required this.onTap,
    this.icon = Icons.add,
    this.iconColor = Colors.white,
    this.backGroundColor = Thems.kprimarycolor,
  });
  final void Function()? onTap;
  IconData icon;
  Color iconColor;
  Color backGroundColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 10,
        backgroundColor: backGroundColor,
        child: FittedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon, color: iconColor, weight: 9),
          ),
        ),
      ),
    );
  }
}
