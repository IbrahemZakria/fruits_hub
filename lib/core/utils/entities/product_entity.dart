import 'package:fruit_hub/core/utils/entities/review_entity.dart';

class ProductEntity {
  final String name;
  final String price;
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

  ProductEntity({
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
}
