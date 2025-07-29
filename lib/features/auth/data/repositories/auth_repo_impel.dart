import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/exceptions/custom_exception.dart';
import 'package:fruit_hub/core/failure/failure.dart';
import 'package:fruit_hub/core/failure/firebase_server_failure.dart';
import 'package:fruit_hub/core/utils/services/data_base/fire_store_services.dart';
import 'package:fruit_hub/core/utils/services/end_points.dart';
import 'package:fruit_hub/core/utils/services/firebase_auth_services.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpel extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final FireStoreServices fireStoreServices;
  AuthRepoImpel(this.firebaseAuthServices, this.fireStoreServices);
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    User? user;
    try {
      user = await firebaseAuthServices.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // لما باخد ليوزر من ال credential مبيسجلش user name علشان كدا بنحطه يدوى
      UserEntity userentity = UserEntity(
        email: user.email!,
        name: name,
        uid: user.uid,
      );
      log(name);

      //  دى اللى بتضيف اليوزر للفيرستور
      await addUserData(user: userentity);
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      if (user != null) {
        await deleteUser();
        log("message user deleted}");
        return left(FirebaseServerFailure(errorMessage: e.message.toString()));
      }
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

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      User user = await firebaseAuthServices.signInWithGoogle();
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      log("message: ${e.message}");
      return left(FirebaseServerFailure(errorMessage: e.message.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      User user = await firebaseAuthServices.signInWithFacebook();
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      log("message: ${e.message}");
      return left(FirebaseServerFailure(errorMessage: e.message.toString()));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    try {
      throw CustomException("fgkljdj");

      await fireStoreServices.addData(EndPoints.addUserData, user.toMap());
    } on CustomException catch (e) {
      throw CustomException(e.message);

      // TODO
    }
  }

  @override
  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }
}
