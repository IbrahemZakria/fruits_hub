import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_decoration.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/shipping_page_widgets/shiping_check_box.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.ontap,
    required this.isSelected,
    required this.titel,
    required this.suptitel,
    required this.price,
  });
  final void Function()? ontap;
  final bool isSelected;
  final String titel, suptitel, price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: AnimatedContainer(
        decoration: AppDecoration.greyBoxDecoration.copyWith(
          border: Border.all(
            color: isSelected ? Thems.kprimarycolor : Colors.transparent,
          ),
        ),
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShipingCheckBox(isSelected: isSelected),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  titel,
                  style: Thems.textStyle13b.copyWith(color: Thems.black),
                ),
                Text(
                  suptitel,
                  style: Thems.textStyle13b.copyWith(
                    color: Thems.textlightgray,
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(price, style: Thems.textStyle13b)],
            ),
          ],
        ),
      ),
    );
  }
}
