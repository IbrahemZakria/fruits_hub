import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/entities/product_entity.dart';
import 'package:fruit_hub/features/product_preview/presentation/widgets/product_preview_body.dart';

class ProductPreview extends StatelessWidget {
  const ProductPreview({super.key, required this.productEntity});
  static const String routeName = "ProductPreview";

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return ProductPreviewBody(productEntity: productEntity);
  }
}
