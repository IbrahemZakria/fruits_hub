import 'package:flutter/material.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/check_out_steps_widgets/check_out_steps_item.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CheckOutSteps extends StatelessWidget {
  CheckOutSteps({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });
  final int currentIndex;
  final PageController pageController;
  final List<String> titel = [
    S.current.shipping,
    S.current.address,
    S.current.payment,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CheckOutStepsItem(
          pageController: pageController,
          index: 0,

          isSelected: 0 <= currentIndex ? true : false,
          titel: titel[0],
        ),
        CheckOutStepsItem(
          pageController: pageController,

          index: 1,

          isSelected: 1 <= currentIndex ? true : false,
          titel: titel[1],
        ),
        CheckOutStepsItem(
          pageController: pageController,

          index: 2,

          isSelected: 2 <= currentIndex ? true : false,
          titel: titel[2],
        ),
      ],
    );
  }
}
