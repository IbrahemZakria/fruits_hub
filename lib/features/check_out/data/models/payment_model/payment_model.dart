import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';

import 'amount.dart';
import 'payment_item_list.dart';

class PaymentModel {
  AmountModel? amount;
  String? description;
  PaymentItemListModel? itemList;

  PaymentModel({
    required this.amount,
    required this.description,
    required this.itemList,
  });

  Map<String, dynamic> toJson() => {
    'amount': amount?.toJson(),
    'description': description,
    'item_list': itemList?.toJson(),
  };
  factory PaymentModel.fromEntity(OrderEntity orderEntity) {
    return PaymentModel(
      amount: AmountModel.fromEntity(orderEntity),
      description: "The payment transaction descriptionباستسثيبات.",
      itemList: PaymentItemListModel.fromEntity(orderEntity),
    );
  }
}
