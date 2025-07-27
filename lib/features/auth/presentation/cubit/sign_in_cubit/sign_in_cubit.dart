import 'package:bloc/bloc.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repositories/auth_repo.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(SignInLoadingState());
    final result = await authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    result.fold(
      (failure) => emit(SignInFailureState(failure.errorMessage)),
      (user) => emit(SignInSuccessState(user)),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SignInLoadingState());

    final result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(SignInFailureState(failure.errorMessage)),
      (user) => emit(SignInSuccessState(user)),
    );
  }

  Future<void> signInWithFacebook() async {
    emit(SignInLoadingState());

    final result = await authRepo.signInWithFacebook();
    result.fold(
      (failure) => emit(SignInFailureState(failure.errorMessage)),
      (user) => emit(SignInSuccessState(user)),
    );
  }
}
