import 'package:flutter/material.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/shipping_page_widgets/shipping_item.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ShippingPageBody extends StatefulWidget {
  const ShippingPageBody({super.key});

  @override
  State<ShippingPageBody> createState() => _ShippingPageBodyState();
}

class _ShippingPageBodyState extends State<ShippingPageBody> {
  int currenIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShippingItem(
          ontap: () {
            setState(() {
              currenIndex = 0;
            });
          },
          isSelected: 0 == currenIndex,
          titel: S.current.cash_on_delivery,
          suptitel: S.current.delivery_from_store,
          price: S.current.price(5),
        ),
        SizedBox(height: 16),
        ShippingItem(
          ontap: () {
            setState(() {
              currenIndex = 1;
            });
          },
          isSelected: 1 == currenIndex,
          titel: S.current.pay_online,
          suptitel: S.current.please_select_payment,
          price: S.current.price(5),
        ),
      ],
    );
  }
}
