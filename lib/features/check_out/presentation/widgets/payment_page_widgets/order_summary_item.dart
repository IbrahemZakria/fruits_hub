import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OrderSummaryItem extends StatelessWidget {
  const OrderSummaryItem({
    super.key,
    this.style = Thems.textStyle13re,
    required this.titel,
    required this.price,
  });
  final TextStyle style;
  final String titel;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(titel, style: style),
        Text("$price ${S.current.pound}", style: style),
      ],
    );
  }
}
