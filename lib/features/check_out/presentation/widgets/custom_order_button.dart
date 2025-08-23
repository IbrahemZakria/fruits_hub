import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/widgts/custom_button.dart';
import 'package:fruit_hub/core/utils/widgts/user_message.dart';
import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/check_out/presentation/cubit/order_cubit.dart';
import 'package:fruit_hub/generated/l10n.dart';

// ignore: must_be_immutable
class CustomOrderButton extends StatelessWidget {
  CustomOrderButton({
    super.key,
    required this.pageController,
    required this.formKey,
    required this.curentIndex,
    required this.valueNotifier,
  });
  final GlobalKey<FormState> formKey;

  final PageController pageController;
  int curentIndex;
  ValueNotifier<AutovalidateMode> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: () {
        if (curentIndex == 0) {
          if (context.read<OrderEntity>().payWithCash != null) {
            pageController.animateToPage(
              curentIndex + 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {
            showUserMessage(message: S.current.choose_payment_method);
          }
        }

        if (curentIndex == 1) {
          FocusScope.of(context).unfocus(); // يقفل الكيبورد

          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            pageController.animateToPage(
              curentIndex + 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {
            valueNotifier.value = AutovalidateMode.always;
          }
        }
        if (curentIndex == 2) {
          OrderEntity orderEntity = context.read<OrderEntity>();
          context.read<OrderCubit>().addorder(orderEntity);
        }
      },
      text: curentIndex != 2 ? S.current.next : S.current.confirm_continue,
    );
  }
}
