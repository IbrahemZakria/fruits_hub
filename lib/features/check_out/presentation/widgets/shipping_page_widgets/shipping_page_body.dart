import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/shipping_page_widgets/shipping_item.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ShippingPageBody extends StatefulWidget {
  const ShippingPageBody({super.key});

  @override
  State<ShippingPageBody> createState() => _ShippingPageBodyState();
}

class _ShippingPageBodyState extends State<ShippingPageBody>
    with AutomaticKeepAliveClientMixin {
  int currenIndex = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        ShippingItem(
          ontap: () {
            context.read<OrderEntity>().payWithCash = true;
            setState(() {
              currenIndex = 0;
            });
          },
          isSelected: 0 == currenIndex,
          titel: S.current.cash_on_delivery,
          suptitel: S.current.delivery_from_store,
          price: S.current.price(
            context.read<OrderEntity>().cartentity.calculateTotalPrice(),
          ),
        ),
        SizedBox(height: 16),
        ShippingItem(
          ontap: () {
            context.read<OrderEntity>().payWithCash = false;

            setState(() {
              currenIndex = 1;
            });
          },
          isSelected: 1 == currenIndex,
          titel: S.current.pay_online,
          suptitel: S.current.please_select_payment,
          price: S.current.price(
            context.read<OrderEntity>().cartentity.calculateTotalPrice(),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
