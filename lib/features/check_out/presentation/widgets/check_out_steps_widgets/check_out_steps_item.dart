import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/thems.dart';

class CheckOutStepsItem extends StatelessWidget {
  const CheckOutStepsItem({
    super.key,
    required this.isSelected,
    required this.titel,
    required this.index,
    required this.pageController,
  });
  final bool isSelected;
  final String titel;
  final int index;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: isSelected
            ? () {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            : () {},
        child: Row(
          children: [
            CircleAvatar(
              radius: 12,
              backgroundColor: isSelected
                  ? Thems.kprimarycolor
                  : Thems.lightgray,
              child: FittedBox(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: isSelected
                      ? Icon(Icons.check, color: Colors.white)
                      : Text((index + 1).toString()),
                ),
              ),
            ),
            SizedBox(width: 8),
            Text(
              titel,
              style: isSelected
                  ? Thems.textStyle13b.copyWith(color: Thems.kprimarycolor)
                  : Thems.textStyle13SB,
            ),
          ],
        ),
      ),
    );
  }
}
