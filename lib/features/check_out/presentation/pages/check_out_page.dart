import 'package:flutter/material.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/check_out_page_body.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});
  static const String routeName = "CheckOutPage";

  @override
  Widget build(BuildContext context) {
    return CheckOutPageBody();
  }
}
