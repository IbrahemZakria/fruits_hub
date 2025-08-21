import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/widgts/custom_app_bar.dart';
import 'package:fruit_hub/core/utils/widgts/custom_button.dart';
import 'package:fruit_hub/core/utils/widgts/user_message.dart';
import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/check_out/presentation/pages/address_page.dart';
import 'package:fruit_hub/features/check_out/presentation/pages/payment_page.dart';
import 'package:fruit_hub/features/check_out/presentation/pages/shipping_page.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/check_out_steps_widgets/check_out_steps.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CheckOutPageBody extends StatefulWidget {
  const CheckOutPageBody({super.key});

  @override
  State<CheckOutPageBody> createState() => _CheckOutPageBodyState();
}

class _CheckOutPageBodyState extends State<CheckOutPageBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final List<String> appbarTitel = [
    S.current.shipping,
    S.current.address,
    S.current.payment,
  ];
  PageController pageController = PageController();
  int curentIndex = 0;
  ValueNotifier<AutovalidateMode> valueNotifier = ValueNotifier(
    AutovalidateMode.disabled,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    valueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      ShippingPage(),
      AddressPage(formKey: formKey, autovalidateMode: valueNotifier),
      PaymentPage(),
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomAppBar(
                titel: appbarTitel[curentIndex],
                notificationVisabilty: false,
                arrowbackVisabilty: true,
              ),
              CheckOutSteps(
                currentIndex: curentIndex,
                pageController: pageController,
              ),
              SizedBox(height: 16),
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      curentIndex = value;
                    });
                  },
                  // physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    return pages[index];
                  },
                ),
              ),
              CustomButton(
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
                },
                text: curentIndex != 2
                    ? S.current.next
                    : S.current.confirm_continue,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * .05),
            ],
          ),
        ),
      ),
    );
  }
}
