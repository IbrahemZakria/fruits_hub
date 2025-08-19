import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/widgts/custom_app_bar.dart';
import 'package:fruit_hub/core/utils/widgts/custom_button.dart';
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
  final List<Widget> pages = [ShippingPage(), AddressPage(), PaymentPage()];
  final List<String> appbarTitel = [
    S.current.shipping,
    S.current.address,
    S.current.payment,
  ];
  PageController pageController = PageController();
  int curentIndex = 0;

  @override
  Widget build(BuildContext context) {
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
                child: Stack(
                  children: [
                    Positioned.fill(
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
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: MediaQuery.sizeOf(context).height * .1,
                      child: CustomButton(
                        onTap: () {
                          pageController.animateToPage(
                            curentIndex + 1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        text: curentIndex != 2
                            ? S.current.next
                            : S.current.confirm_continue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
