import 'package:equatable/equatable.dart';
import 'package:fruit_hub/core/utils/entities/review_entity.dart';

class ProductEntity extends Equatable {
  int? amount;
  String? productUnit;
  final String name;
  final double price;
  String? imageUrl;
  final String description;
  final String productCode;
  final int numberOfMonthExpiration;
  final bool isOrganic;
  final bool isFeatured;
  int numberOfCalories;
  num? raitingCount;
  num? averageCount;
  List<ReviewEntity> reviewEntity;
  num? sellsCount;

  ProductEntity({
    this.productUnit,
    this.amount,
    this.sellsCount,

    required this.reviewEntity,
    required this.numberOfCalories,
    required this.numberOfMonthExpiration,
    required this.isOrganic,
    required this.isFeatured,
    this.raitingCount,
    this.averageCount,
    required this.name,
    required this.price,
    this.imageUrl,
    required this.description,
    required this.productCode,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [productCode];
}
