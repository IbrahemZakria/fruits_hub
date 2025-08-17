import 'package:fruit_hub/core/utils/entities/product_entity.dart';
import 'package:fruit_hub/features/home/domain/entities/cart_item_entity.dart';

final ProductEntity dummyProduct = ProductEntity(
  reviewEntity: [],
  numberOfCalories: 52,
  numberOfMonthExpiration: 1,
  isOrganic: true,
  isFeatured: true,
  raitingCount: 20,
  averageCount: 4.5,
  name: "Fresh Apple",
  price: 25,
  imageUrl: "https://images.unsplash.com/photo-1567306226416-28f0efdc88ce",
  description: "Crisp and sweet organic apples from local farms.",
  productCode: "APL123",
  amount: 1,
  productUnit: "كجم",
);
final List<ProductEntity> dummyProducts = [
  dummyProduct,
  dummyProduct,
  dummyProduct,
  dummyProduct,
  dummyProduct,
  dummyProduct,
  dummyProduct,
  dummyProduct,
  dummyProduct,
  dummyProduct,
  dummyProduct,
  dummyProduct,
];

final CartItemEntity dummycartitem = CartItemEntity(
  productEntity: ProductEntity(
    reviewEntity: [],
    numberOfCalories: 52,
    numberOfMonthExpiration: 1,
    isOrganic: true,
    isFeatured: true,
    raitingCount: 20,
    averageCount: 4.5,
    name: "Fresh Apple",
    price: 25,
    imageUrl: "https://images.unsplash.com/photo-1567306226416-28f0efdc88ce",
    description: "Crisp and sweet organic apples from local farms.",
    productCode: "APL123",
    amount: 1,
    productUnit: "كجم",
  ),
  productCount: 3,
);
final List<CartItemEntity> dummycartproducts = [
  dummycartitem,
  dummycartitem,
  dummycartitem,
  dummycartitem,
  dummycartitem,
  dummycartitem,
  dummycartitem,
  dummycartitem,
  dummycartitem,
  dummycartitem,
  dummycartitem,
  dummycartitem,
];
