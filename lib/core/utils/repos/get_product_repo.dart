import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/failure/failure.dart';
import 'package:fruit_hub/core/utils/entities/product_entity.dart';

abstract class GetProductRepo {
  Future<Either<Failure, List<ProductEntity>>> getallProducts();
  Future<Either<Failure, List<ProductEntity>>> getbestSellingProducts();
}
