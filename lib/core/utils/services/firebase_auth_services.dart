import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruit_hub/core/exceptions/custom_exception.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

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

  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<User> signInWithGoogle() async {
    try {
      if (kIsWeb) {
        final googleProvider = GoogleAuthProvider();
        final userCredential = await _auth.signInWithPopup(googleProvider);
        return userCredential.user!;
      } else {
        final googleSignIn = GoogleSignIn.instance;

        await googleSignIn.initialize();

        final googleUser = await googleSignIn.authenticate();

        final googleAuth = googleUser.authentication;

        final credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
        );

        final userCredential = await _auth.signInWithCredential(credential);
        return userCredential.user!;
      }
    }
    // 🔻 Firebase Authentication Errors
    on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
        case 'wrong-password':
        case 'invalid-credential':
          throw CustomException(S.current.invalidEmailOrPassword);
        case 'account-exists-with-different-credential':
          throw CustomException(S.current.accountExistsWithDifferentCredential);
        case 'network-request-failed':
          throw CustomException(S.current.noInternet);
        case 'popup-blocked':
        case 'popup-closed-by-user':
          throw CustomException(S.current.signInCancelled);
        default:
          log("FirebaseAuthException: ${e.code}");
          throw CustomException(S.current.unknownError);
      }
    }
    // 🔻 Platform Errors (mostly native issues)
    on PlatformException catch (e) {
      log("📱 Platform Exception: ${e.code} — ${e.message}");
      throw CustomException(S.current.platformError);
    }
    // 🔻 Timeout
    on TimeoutException catch (e) {
      log("⏳ Timeout Exception: ${e.message}");
      throw CustomException(S.current.timeout);
    }
    // 🔻 Google Sign-in SDK error
    on GoogleSignInException catch (e) {
      log("🔑 Google Sign-In Exception: ${e.code}");
      throw CustomException(S.current.googleSignInFailed);
    }
    // 🔻 Any unknown error
    catch (e) {
      log("❌ Unknown Error: $e");
      throw CustomException(S.current.unknownError);
    }
  }

  Future<User> signInWithFacebook() async {
    try {
      await FacebookAuth.instance
          .logOut()
          .then((value) {
            log("lkgslfsmvdl;kzv");
          })
          .catchError((error) {
            log("Facebook logout error: $error");
          });
      // 💥 مهم جدًا

      final LoginResult result = await FacebookAuth.instance.login(
        loginBehavior:
            LoginBehavior.nativeWithFallback, // بيخلي المستخدم يختار الحساب

        permissions: ['email', 'public_profile'],
      );
      if (result.status == LoginStatus.success) {
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(result.accessToken!.tokenString);

        final credential = await FirebaseAuth.instance.signInWithCredential(
          facebookAuthCredential,
        );

        return credential.user!;
      } else if (result.status == LoginStatus.cancelled) {
        throw CustomException(
          S.current.signInCancelled,
        ); // المستخدم لغى العملية
      } else {
        log(result.message ?? 'Unknown Facebook login error');
        throw CustomException(
          S.current.googleSignInFailed,
        ); // نستخدم نفس الرسالة لو عايز تغيرها لفيسبوك قول
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        log(e.code.toString());

        throw CustomException(S.current.accountExistsWithDifferentCredential);
      } else if (e.code == 'invalid-credential') {
        log(e.code.toString());

        throw CustomException(S.current.invalidEmailOrPassword);
      } else if (e.code == 'network-request-failed') {
        log(e.code.toString());

        throw CustomException(S.current.noInternet);
      } else {
        log(e.code.toString());
        throw CustomException(S.current.unknownError);
      }
    } catch (e) {
      log("///////////${e.toString()}");
      throw CustomException(S.current.unknownError);
    }
  }
}
