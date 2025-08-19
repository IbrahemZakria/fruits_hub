import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/thems.dart';

class ShipingCheckBox extends StatelessWidget {
  const ShipingCheckBox({super.key, required this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) {
        // هنا بتحدد نوع الانيميشن
        return ScaleTransition(scale: animation, child: child);
      },
      duration: Duration(milliseconds: 300),
      child: isSelected
          ? Container(
              key: const ValueKey("selected"),
              width: 18,
              height: 18,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: FittedBox(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: CircleAvatar(backgroundColor: Thems.kprimarycolor),
                ),
              ),
            )
          : Container(
              key: const ValueKey("notselected"),
              width: 18,
              height: 18,

              decoration: BoxDecoration(
                shape: BoxShape.circle,

                border: Border.all(color: Thems.textlightgray),
              ),
            ),
    );
  }
}
