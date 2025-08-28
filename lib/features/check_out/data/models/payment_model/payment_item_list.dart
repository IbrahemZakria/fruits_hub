import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';

import 'payment_item.dart';

class PaymentItemListModel {
  List<PaymentItemModel>? items;

  PaymentItemListModel({required this.items});

  Map<String, dynamic> toJson() => {
    'items': items?.map((e) => e.toJson()).toList(),
  };
  factory PaymentItemListModel.fromEntity(OrderEntity orderEntity) {
    return PaymentItemListModel(
      items: orderEntity.cartentity.cartProducts.map((e) {
        return PaymentItemModel.fromEntity(e);
      }).toList(),
    );
  }
}
