import 'package:flutter/material.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/payment_page_widgets/delivery_address_widget.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/payment_page_widgets/order_summary.dart';
import 'package:fruit_hub/generated/l10n.dart';

class PaymentPageBody extends StatelessWidget {
  const PaymentPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(S.current.order_summary),
        SizedBox(height: 8),
        OrderSummary(),
        Text(S.current.delivery_address),
        SizedBox(height: 8),
        DeliveryAddressWidget(),
      ],
    );
  }
}
