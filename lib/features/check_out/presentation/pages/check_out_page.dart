import 'package:flutter/material.dart';
import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/check_out_page_body.dart';
import 'package:fruit_hub/features/home/domain/entities/cart_entity.dart';
import 'package:provider/provider.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key, required this.cartEntity});
  final CartEntity cartEntity;
  static const String routeName = "CheckOutPage";

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: OrderEntity(cartentity: cartEntity),
      child: CheckOutPageBody(),
    );
  }
}
