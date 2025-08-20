import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.padding = 0});
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Divider(height: 5, endIndent: padding, indent: padding);
  }
}
