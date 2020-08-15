import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/domain/auth/auth_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/auth/i_auth_facade.dart';
import 'package:flash_chat/domain/auth/value_objects.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthFacade implements IAuthFacade {
  FirebaseAuth _firebaseAuth;
  GoogleSignIn _googleSignIn;

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({EmailAddress emailAddress, Password password}) async {
    String emailValue = emailAddress.apiSafeValue();
    String passwordValue = password.apiSafeValue();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: emailValue, password: passwordValue);
      return right(unit);
    } on PlatformException catch (e) {
      switch (e.code) {
        case 'ERROR_EMAIL_ALREADY_IN_USE':
          return left(const AuthFailure.emailAlreadyInUse());
          break;
        case 'ERROR_WEAK_PASSWORD':
          return left(const AuthFailure.weakPassword());
          break;
        case 'ERROR_INVALID_EMAIL':
          return left(const AuthFailure.invalidEmail());
        default:
          return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signinWithEmailAndPassword({EmailAddress emailAddress, Password password}) async {
    String emailValue = emailAddress.apiSafeValue();
    String passwordValue = password.apiSafeValue();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: emailValue, password: passwordValue);
      return right(unit);
    } on PlatformException catch (e) {
      switch (e.code) {
        case 'ERROR_WRONG_PASSWORD':
        case 'ERROR_USER_NOT_FOUND':
        case 'ERROR_USER_DISABLED':
          return left(const AuthFailure.wrongEmailAndPasswordCombination());
          break;
        case 'ERROR_INVALID_EMAIL':
          return left(const AuthFailure.invalidEmail());
          break;
        case 'ERROR_TOO_MANY_REQUESTS':
          return left(const AuthFailure.tooManyRequests());
          break;
        default:
          return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signinWithGoogle() async {
    if (_googleSignIn.currentUser == null) {
      try {
        final googleUser = await _googleSignIn.signIn();
        if (googleUser == null) return left(const AuthFailure.canceledByUser());
        final userAuthentication = await googleUser.authentication;
        final googleCredentials = await GoogleAuthProvider.getCredential(
          idToken: userAuthentication.idToken,
          accessToken: userAuthentication.accessToken,
        );
        await _firebaseAuth.signInWithCredential(googleCredentials);
      } on PlatformException catch (_) {
        return left(const AuthFailure.serverError());
      }
    }
    return right(unit);
  }
}
