import 'package:fruit_hub/features/check_out/domain/entities/adress_entity.dart';
import 'package:fruit_hub/features/home/domain/entities/cart_entity.dart';

class OrderEntity {
  final CartEntity cartentity;
  bool? payWithCash;
  AdressEntity adressEntity = AdressEntity();

  OrderEntity({required this.cartentity, this.payWithCash});
}
