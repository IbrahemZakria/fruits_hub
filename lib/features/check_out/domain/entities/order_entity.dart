import 'package:fruit_hub/features/check_out/domain/entities/adress_entity.dart';
import 'package:fruit_hub/features/home/domain/entities/cart_entity.dart';

class OrderEntity {
  final CartEntity cartentity;
  final bool? payWithCash;
  final AdressEntity? adressEntity;

  OrderEntity({required this.cartentity, this.payWithCash, this.adressEntity});
}
