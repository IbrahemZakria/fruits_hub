import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/widgts/custom_app_bar.dart';
import 'package:fruit_hub/features/check_out/presentation/cubit/order_cubit.dart';
import 'package:fruit_hub/features/check_out/presentation/pages/address_page.dart';
import 'package:fruit_hub/features/check_out/presentation/pages/payment_page.dart';
import 'package:fruit_hub/features/check_out/presentation/pages/shipping_page.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/check_out_steps_widgets/check_out_steps.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/custom_order_button.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

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
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddOrderLoadingstate,
          child: Scaffold(
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
                    CustomOrderButton(
                      pageController: pageController,
                      formKey: formKey,
                      curentIndex: curentIndex,
                      valueNotifier: valueNotifier,
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * .05),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
