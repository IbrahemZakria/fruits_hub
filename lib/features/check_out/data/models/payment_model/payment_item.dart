import 'package:fruit_hub/features/home/domain/entities/cart_item_entity.dart';

class PaymentItemModel {
  final String? name;
  final int? quantity;
  final String? price;
  final String? currency;

  PaymentItemModel({
    required this.name,
    required this.quantity,
    required this.price,
    required this.currency,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'quantity': quantity,
    'price': price,
    'currency': currency,
  };
  factory PaymentItemModel.fromEntity(CartItemEntity cartItemEntity) {
    return PaymentItemModel(
      name: cartItemEntity.productEntity.name,
      quantity: cartItemEntity.productCount,
      price: cartItemEntity.productEntity.price.toString(),
      currency: "USD",
    );
  }
}
