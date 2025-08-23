import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/exceptions/custom_exception.dart';
import 'package:fruit_hub/core/failure/failure.dart';
import 'package:fruit_hub/core/failure/firebase_server_failure.dart';
import 'package:fruit_hub/core/utils/services/auth/get_user_data.dart';
import 'package:fruit_hub/core/utils/services/data_base/data_base_services.dart';
import 'package:fruit_hub/core/utils/services/end_points.dart';
import 'package:fruit_hub/features/check_out/data/models/order_model.dart';
import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/check_out/domain/repositories/order_repo.dart';

class OrderRepoImpel extends OrderRepo {
  final DataBaseServices dataBaseServices;

  OrderRepoImpel({required this.dataBaseServices});
  @override
  Future<Either<Failure, void>> addorder(OrderEntity orderEntity) async {
    try {
      Map<String, dynamic> data = OrderModel.fromOrderEntity(
        orderEntity,
      ).toJson();
      await dataBaseServices.addData(
        path: EndPoints.addUserData,
        documentId: getUserData().uid,
        supColection: EndPoints.addorder,
        data: data,
      );
      return right(null);
    } on CustomException catch (e) {
      return left(FirebaseServerFailure(errorMessage: e.toString()));
    }
  }
}
