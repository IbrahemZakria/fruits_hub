import 'package:fruit_hub/core/utils/entities/product_entity.dart';
import 'package:fruit_hub/core/utils/models/review_model.dart';

class ProductModel extends ProductEntity {
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
  List<ReviewModel> reviewModel;
  num? sellsCount;
  ProductModel({
    this.productUnit,
    this.amount,
    required this.sellsCount,
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
  }) : super(
         sellsCount: sellsCount,
         amount: amount,
         productUnit: productUnit,
         reviewEntity: reviewModel,
         numberOfCalories: numberOfCalories,
         numberOfMonthExpiration: numberOfMonthExpiration,
         isOrganic: isOrganic,
         isFeatured: isFeatured,
         name: name,
         price: price,
         imageUrl: imageUrl,
         description: description,
         productCode: productCode,
         raitingCount: raitingCount,
         averageCount: averageCount,
       );

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
      'sellsCount': sellsCount,
      'amount': amount,
      'productUnit': productUnit,

      'reviews': reviewModel.map((e) => e.toJson()).toList(),
    };
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      reviewModel: (json["reviews"] as List<dynamic>)
          .map((item) => ReviewModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      name: json['name'] ?? '',
      price: json['price'] ?? 0,
      imageUrl: json['imageUrl'],
      description: json['description'] ?? '',
      productCode: json['productCode']?.toString() ?? '',
      numberOfCalories: json['numberOfCalories'] ?? 0,
      numberOfMonthExpiration: json['numberOfMonthExpiration'] ?? 0,
      isOrganic: json['isOrganic'] ?? false,
      raitingCount: json['raitingCount'] ?? 0,
      averageCount: json['averageCount'] ?? 0,
      isFeatured: json["isFeatured"],
      sellsCount: json["sellsCount"],
      amount: json["amount"],
      productUnit: json["productUnit"],
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
      sellsCount: entity.sellsCount ?? 0,
      productUnit: entity.productUnit ?? "كجم",
      amount: entity.amount ?? 1,
    );
  }
}
