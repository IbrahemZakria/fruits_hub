import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/exceptions/custom_exception.dart';
import 'package:fruit_hub/generated/l10n.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // 'The password provided is too weak.'
        throw CustomException(S.current.weakPassword);
      } else if (e.code == 'email-already-in-use') {
        // The account already exists for that email.
        throw CustomException(S.current.emailAlreadyInUse);
      } else if (e.code == 'network-request-failed') {
        // The account already exists for that email.
        throw CustomException(S.current.noInternet);
      } else {
        log(e.code.toString());

        // an un known error occurred: please try again later
        throw CustomException(S.current.unknownError);
      }
      // an un known error occurred: please try again later
    } catch (e) {
      log(e.toString());
      throw CustomException(S.current.unknownError);
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // No user found for that email.
        throw CustomException("${S.current.invalidEmailOrPassword}1");
      } else if (e.code == 'wrong-password') {
        // Wrong password provided for that user.
        throw CustomException("${S.current.invalidEmailOrPassword}2");
      } else if (e.code == 'invalid-credential') {
        // Wrong password provided for that user.
        throw CustomException("${S.current.invalidEmailOrPassword}3");
      } else if (e.code == 'network-request-failed') {
        // The account already exists for that email.
        throw CustomException(S.current.noInternet);
      } else {
        log(e.code.toString());
        // an un known error occurred: please try again later
        throw CustomException(S.current.unknownError);
      }
    } catch (e) {
      log(e.toString());
      throw CustomException(S.current.unknownError);
    }
  }
}
