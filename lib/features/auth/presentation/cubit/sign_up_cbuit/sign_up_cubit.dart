import 'package:bloc/bloc.dart';
import 'package:fruit_hub/features/auth/domain/repositories/auth_repo.dart';
import 'package:fruit_hub/features/auth/presentation/cubit/sign_up_cbuit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(SignUpLoadingState());
    final result = await authRepo.createUserWithEmailAndPassword(
      email: email,
      password: password,
      name: name,
    );

    result.fold(
      (failure) => emit(SignUpFailureState(failure.errorMessage)),
      (user) => emit(SignUpSuccessState(user)),
    );
  }
}
