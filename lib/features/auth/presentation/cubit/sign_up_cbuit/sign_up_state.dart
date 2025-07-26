import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

abstract class SignUpState {
  const SignUpState();
}

class SignUpInitial extends SignUpState {}

class SignUpLoadingState extends SignUpState {}

class SignUpSuccessState extends SignUpState {
  final UserEntity user;

  SignUpSuccessState(this.user);
}

class SignUpFailureState extends SignUpState {
  final String errorMessage;

  SignUpFailureState(this.errorMessage);
}
