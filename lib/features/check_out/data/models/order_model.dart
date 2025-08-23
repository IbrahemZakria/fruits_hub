import 'package:fruit_hub/features/check_out/data/models/adress_model.dart';
import 'package:fruit_hub/features/check_out/data/models/order_product_model.dart';
import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';

class OrderModel {
  String? paymenMethod;
  final double totalPrice;
  final AdressModel adressModel;
  final List<OrderProductModel> orderProductsModel;

  OrderModel({
    required this.totalPrice,
    this.paymenMethod,
    required this.adressModel,
    required this.orderProductsModel,
  });
  factory OrderModel.fromOrderEntity(OrderEntity orderEntity) {
    return OrderModel(
      adressModel: AdressModel.fromEntity(orderEntity.adressEntity),
      orderProductsModel: orderEntity.cartentity.cartProducts
          .map((e) => OrderProductModel.fromEntity(e))
          .toList(),
      totalPrice: orderEntity.cartentity.calculateTotalPrice(),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "totalPrice": totalPrice,
      "paymenMethod": paymenMethod,
      "adressModel": adressModel.toJson(),
      "orderProductsModel": orderProductsModel.map((e) => e.toJson()).toList(),
    };
  }
}
