import 'package:flutter/material.dart';
import 'package:fruit_hub/features/best_selling_fruits/presentation/widgets/best_selling_page_body.dart';

class BestSellingPage extends StatelessWidget {
  const BestSellingPage({super.key});
  static const String routeName = "BestSellingPage";

  @override
  Widget build(BuildContext context) {
    return BestSellingPageBody();
  }
}
