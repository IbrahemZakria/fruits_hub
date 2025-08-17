import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/presentation/widgets/cart_widgets/cart_page_body.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CartPageBody());
  }
}
