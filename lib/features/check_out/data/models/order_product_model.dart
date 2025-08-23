import 'package:fruit_hub/features/home/domain/entities/cart_item_entity.dart';

class OrderProductModel {
  final String code;
  final double totalPrice;
  final String ordername;
  final String imageUrl;
  final int quantity;

  OrderProductModel({
    required this.code,
    required this.totalPrice,
    required this.ordername,
    required this.imageUrl,
    required this.quantity,
  });
  factory OrderProductModel.fromEntity(CartItemEntity cartItemEntity) {
    return OrderProductModel(
      code: cartItemEntity.productEntity.productCode,
      totalPrice: cartItemEntity.calculateTotalPrice(),
      ordername: cartItemEntity.productEntity.name,
      imageUrl: cartItemEntity.productEntity.imageUrl!,
      quantity: cartItemEntity.productCount,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "code": code,
      "totalPrice": totalPrice,
      "ordername": ordername,
      "imageUrl": imageUrl,
      "quantity": quantity,
    };
  }
}
