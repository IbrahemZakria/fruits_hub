import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/exceptions/custom_exception.dart';
import 'package:fruit_hub/core/failure/failure.dart';
import 'package:fruit_hub/core/failure/firebase_server_failure.dart';
import 'package:fruit_hub/core/utils/entities/product_entity.dart';
import 'package:fruit_hub/core/utils/models/product_model.dart';
import 'package:fruit_hub/core/utils/repos/get_product_repo.dart';
import 'package:fruit_hub/core/utils/services/data_base/data_base_services.dart';

class GetProductRepoImpelmentation extends GetProductRepo {
  DataBaseServices dataBaseServices;

  GetProductRepoImpelmentation(this.dataBaseServices);
  @override
  Future<Either<Failure, List<ProductEntity>>> getallProducts() async {
    try {
      var jsonData = await dataBaseServices.getData(
        path: "products",
        documentId: null,
      );

      List<ProductEntity> products = (jsonData as List)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return right(products);
    } on CustomException catch (e) {
      return left(FirebaseServerFailure(errorMessage: e.message));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getbestSellingProducts() async {
    try {
      var jsonData = await dataBaseServices.getData(
        descending: true,
        limit: 10,
        orderBy: "sellsCount",
        path: "products",
      );

      List<ProductEntity> products = (jsonData as List)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return right(products);
    } on CustomException catch (e) {
      return left(FirebaseServerFailure(errorMessage: e.message));
    }
  }
}
