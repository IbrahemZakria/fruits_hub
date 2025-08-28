import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';

import 'details.dart';

class AmountModel {
  String? total;
  String? currency;
  DetailsModel? details;

  AmountModel({
    required this.total,
    required this.currency,
    required this.details,
  });

  Map<String, dynamic> toJson() => {
    'total': total,
    'currency': currency,
    'details': details?.toJson(),
  };
  factory AmountModel.fromEntity(OrderEntity orderEntity) {
    return AmountModel(
      total: (orderEntity.cartentity.calculateTotalPrice() + 30).toString(),
      currency: "USD",
      details: DetailsModel.fromEntity(orderEntity),
    );
  }
}
