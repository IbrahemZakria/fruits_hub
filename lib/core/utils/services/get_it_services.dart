import 'package:fruit_hub/core/utils/services/data_base/fire_store_services.dart';
import 'package:fruit_hub/core/utils/services/auth/firebase_auth_services.dart';
import 'package:fruit_hub/features/auth/data/repositories/auth_repo_impel.dart';
import 'package:fruit_hub/features/auth/domain/repositories/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<FireStoreServices>(FireStoreServices());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpel(getIt<FirebaseAuthServices>(), getIt<FireStoreServices>()),
  );
}
