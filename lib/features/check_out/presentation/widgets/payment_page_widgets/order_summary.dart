import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_decoration.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/core/utils/widgts/custom_divider.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/payment_page_widgets/order_summary_item.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: AppDecoration.greyBoxDecoration,
      child: Column(
        children: [
          OrderSummaryItem(titel: S.current.subtotal, price: 500),
          SizedBox(height: 8),
          OrderSummaryItem(titel: S.current.delivery, price: 500),
          SizedBox(height: 8),
          CustomDivider(padding: MediaQuery.sizeOf(context).width * .07),
          SizedBox(height: 8),

          OrderSummaryItem(
            titel: S.current.total,
            price: 500,
            style: Thems.textStyle16b,
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
