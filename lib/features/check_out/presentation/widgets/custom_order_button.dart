import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/widgts/custom_button.dart';
import 'package:fruit_hub/core/utils/widgts/user_message.dart';
import 'package:fruit_hub/features/check_out/data/models/payment_model/payment_model.dart';
import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/check_out/presentation/cubit/order_cubit.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

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
    var orderCuit = context.read<OrderCubit>();
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

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => PaypalCheckoutView(
                sandboxMode: true,
                clientId:
                    "AS-_yHS3TLccqsN6X8dK0kSWjHdg5WynLA163u64iXqndQT4BfnDIP1mMbtBQutbTZ2P-FkLFEBPRMPS",
                secretKey:
                    "EAymOwOTpU_C2PM5G87-4-mmsMTt3YOA4CJY78aNZINpM6scLKXbx8MJkbVPOMmqQ3ETidsoPf8Kxw4O",
                transactions: [PaymentModel.fromEntity(orderEntity)],
                note: "Contact us for any questions on your order.",
                onSuccess: (Map params) async {
                  showUserMessage(message: "تمت عمليه الدفع بنجاح");
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }

                  orderCuit.addorder(orderEntity);
                },
                onError: (error) {
                  showUserMessage(
                    backgroundColor: Colors.red,
                    message: "فشلت عمليه الدفع ",
                  );

                  print("onError: $error");
                  Navigator.pop(context);
                },
                onCancel: () {
                  showUserMessage(
                    backgroundColor: Colors.red,
                    message: "فشلت عمليه الدفع ",
                  );

                  print('cancelled:');
                },
              ),
            ),
          );
        }
      },
      text: curentIndex != 2 ? S.current.next : S.current.confirm_continue,
    );
  }
}
