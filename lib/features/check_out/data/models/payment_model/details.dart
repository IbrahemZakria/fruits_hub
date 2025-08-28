import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';

class DetailsModel {
  String? subtotal;
  String? shipping;
  int? shippingDiscount;

  DetailsModel({
    required this.subtotal,
    required this.shipping,
    this.shippingDiscount,
  });

  Map<String, dynamic> toJson() => {
    'subtotal': subtotal,
    'shipping': shipping,
    'shipping_discount': shippingDiscount,
  };
  factory DetailsModel.fromEntity(OrderEntity orderEntity) {
    return DetailsModel(
      subtotal: orderEntity.cartentity.calculateTotalPrice().toString(),
      shipping: '30',
      shippingDiscount: 0,
    );
  }
}
