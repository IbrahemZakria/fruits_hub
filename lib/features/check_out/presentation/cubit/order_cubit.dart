import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/failure/failure.dart';
import 'package:fruit_hub/core/failure/firebase_server_failure.dart';
import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/check_out/domain/repositories/order_repo.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this.orderRepo) : super(OrderInitial());
  final OrderRepo orderRepo;
  Future<Either<Failure, void>> addorder(OrderEntity orderEntity) async {
    emit(AddOrderLoadingstate());
    var result = await orderRepo.addorder(orderEntity);
    return result.fold(
      ((failure) {
        emit(AddOrderFailurestate(errorMessage: failure.errorMessage));
        return left(FirebaseServerFailure(errorMessage: failure.errorMessage));
      }),
      ((ifRight) {
        emit(AddOrderSuccessstate());
        return right(null);
      }),
    );
  }
}
