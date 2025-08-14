import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/failure/failure.dart';
import 'package:fruit_hub/core/utils/cubits/products_state.dart';
import 'package:fruit_hub/core/utils/entities/product_entity.dart';
import 'package:fruit_hub/core/utils/repos/get_product_repo.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.getProductRepo) : super(ProductsInitial());
  final GetProductRepo getProductRepo;
  Future<Either<Failure, List<ProductEntity>>> getallProducts() async {
    emit(ProductsLoadingState());
    var result = await getProductRepo.getallProducts();
    return result.fold(
      ((error) {
        emit(ProductsFailureState(error.errorMessage));
        return Left(error);
      }),
      ((products) {
        emit(ProductsSuccessState(products));
        return Right(products);
      }),
    );
  }

  Future<Either<Failure, List<ProductEntity>>> getbestSellingProducts() async {
    emit(ProductsLoadingState());

    var result = await getProductRepo.getbestSellingProducts();
    return result.fold(
      ((error) {
        emit(ProductsFailureState(error.errorMessage));
        return Left(error);
      }),
      ((products) {
        emit(ProductsSuccessState(products));
        return Right(products);
      }),
    );
  }
}
