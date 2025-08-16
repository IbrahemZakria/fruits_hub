import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/exceptions/custom_exception.dart';
import 'package:fruit_hub/core/failure/failure.dart';
import 'package:fruit_hub/core/failure/firebase_server_failure.dart';
import 'package:fruit_hub/core/utils/services/data_base/data_base_services.dart';
import 'package:fruit_hub/core/utils/services/end_points.dart';
import 'package:fruit_hub/core/utils/services/auth/firebase_auth_services.dart';
import 'package:fruit_hub/core/utils/services/shared_preferance.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpel extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final DataBaseServices dataBaseServices;
  AuthRepoImpel(this.firebaseAuthServices, this.dataBaseServices);
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
    User? user;
    try {
      user = await firebaseAuthServices.signInWithGoogle();
      await addUserData(user: UserModel.fromFirebaseUser(user));
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
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthServices.signInWithFacebook();
      await addUserData(user: UserModel.fromFirebaseUser(user));

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
  // ده بيحط الداتا بتاعه اليوزر ف الداتا بير بعد التسجيل
  Future addUserData({required UserEntity user}) async {
    await dataBaseServices.addData(
      path: EndPoints.addUserData,
      data: UserModel.fromUserEntity(user).toMap(),
      documentId: user.uid,
    );
  }

  @override
  // ده عشان بعد م تعمل انشاء حساب البياتات بتاعه اليوزر ببتسج بس ممكن ميتعملش تسجيلدخول ف نمسح اليوزر
  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  @override
  Future saveUserData({required UserEntity user}) async {
    var jsonData = jsonEncode(UserModel.fromUserEntity(user).toMap());
    await SharedPreferance.setData(key: Constant.userData, value: jsonData);
  }
}
