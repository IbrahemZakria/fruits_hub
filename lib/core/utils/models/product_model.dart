import 'package:fruit_hub/core/utils/entities/product_entity.dart';
import 'package:fruit_hub/core/utils/models/review_model.dart';

class ProductModel {
  final String name;
  final String price;
  String? imageUrl;
  final String description;
  final String productCode;
  final int numberOfMonthExpiration;
  final bool isOrganic;
  final bool isFeatured;
  List<ReviewModel> reviewModel;

  int numberOfCalories;
  final num raitingCount;
  final num averageCount;
  ProductModel({
    required this.reviewModel,
    required this.numberOfCalories,
    required this.numberOfMonthExpiration,
    required this.isOrganic,
    required this.isFeatured,

    required this.raitingCount,
    required this.averageCount,
    required this.name,
    required this.price,
    this.imageUrl,
    required this.description,
    required this.productCode,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'imageUrl': imageUrl,
      'description': description,
      'productCode': productCode,
      'numberOfCalories': numberOfCalories,
      'numberOfMonthExpiration': numberOfMonthExpiration,
      'isOrganic': isOrganic,
      'raitingCount': raitingCount,
      'averageCount': averageCount,
      'isFeatured': isFeatured,
      'reviews': reviewModel.map((e) => e.toJson()).toList(),
    };
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      reviewModel: json["reviews"],
      name: json['name'] ?? '',
      price: json['price']?.toString() ?? '0',
      imageUrl: json['imageUrl'],
      description: json['description'] ?? '',
      productCode: json['productCode']?.toString() ?? '',
      numberOfCalories: json['numberOfCalories'] ?? 0,
      numberOfMonthExpiration: json['numberOfMonthExpiration'] ?? 0,
      isOrganic: json['isOrganic'] ?? false,
      raitingCount: json['raitingCount'] ?? 0,
      averageCount: json['averageCount'] ?? 0,
      isFeatured: json["isFeatured"],
    );
  }
  factory ProductModel.fromEntity(ProductEntity entity) {
    return ProductModel(
      reviewModel: entity.reviewEntity.map((e) {
        return ReviewModel.fromReviewEntity(e);
      }).toList(),
      isFeatured: entity.isFeatured,
      name: entity.name,
      price: entity.price,
      imageUrl: entity.imageUrl,
      description: entity.description,
      productCode: entity.productCode,
      numberOfCalories: entity.numberOfCalories,
      numberOfMonthExpiration: entity.numberOfMonthExpiration,
      isOrganic: entity.isOrganic,
      raitingCount: entity.raitingCount ?? 0,
      averageCount: entity.averageCount ?? 0,
    );
  }
}
