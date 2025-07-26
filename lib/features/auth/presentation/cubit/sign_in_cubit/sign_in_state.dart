part of 'sign_in_cubit.dart';

abstract class SignInState {
  const SignInState();
}

class SignInInitial extends SignInState {}

class SignInLoadingState extends SignInState {}

class SignInSuccessState extends SignInState {
  final UserEntity user;

  SignInSuccessState(this.user);
}

class SignInFailureState extends SignInState {
  final String errorMessage;

  SignInFailureState(this.errorMessage);
}
