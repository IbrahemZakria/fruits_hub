import 'package:fruit_hub/core/utils/repos/get_product_repo.dart';
import 'package:fruit_hub/core/utils/repos/get_product_repo_impelmentation.dart';
import 'package:fruit_hub/core/utils/services/auth/firebase_auth_services.dart';
import 'package:fruit_hub/core/utils/services/data_base/data_base_services.dart';
import 'package:fruit_hub/core/utils/services/data_base/fire_store_services.dart';
import 'package:fruit_hub/features/auth/data/repositories/auth_repo_impel.dart';
import 'package:fruit_hub/features/auth/domain/repositories/auth_repo.dart';
import 'package:fruit_hub/features/check_out/data/repositories/order_repo_impel.dart';
import 'package:fruit_hub/features/check_out/domain/repositories/order_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<DataBaseServices>(FireStoreServices());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpel(getIt<FirebaseAuthServices>(), getIt<DataBaseServices>()),
  );
  getIt.registerSingleton<GetProductRepo>(
    GetProductRepoImpelmentation(getIt<DataBaseServices>()),
  );
  getIt.registerSingleton<OrderRepo>(
    OrderRepoImpel(dataBaseServices: getIt<DataBaseServices>()),
  );
}
