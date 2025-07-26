import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/exceptions/custom_exception.dart';
import 'package:fruit_hub/core/failure/failure.dart';
import 'package:fruit_hub/core/failure/firebase_server_failure.dart';
import 'package:fruit_hub/core/utils/services/firebase_auth_services.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpel extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  AuthRepoImpel(this.firebaseAuthServices);
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = await firebaseAuthServices.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      log("message: ${e.message}");
      return left(FirebaseServerFailure(errorMessage: e.message.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      User user = await firebaseAuthServices.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      log("message: ${e.message}");
      return left(FirebaseServerFailure(errorMessage: e.message.toString()));
    }
  }
}
