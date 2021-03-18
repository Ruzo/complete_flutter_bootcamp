import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/domain/auth/auth_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/auth/i_auth_facade.dart';
import 'package:flash_chat/domain/auth/signed_in_user.dart';
import 'package:flash_chat/domain/auth/value_objects.dart';
import 'package:flash_chat/infrastructure/auth/firebase_auth_xt.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({EmailAddress emailAddress, Password password}) async {
    final String emailValue = emailAddress.apiSafeValue();
    final String passwordValue = password.apiSafeValue();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: emailValue, password: passwordValue);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return left(const AuthFailure.emailAlreadyInUse());
          break;
        case 'weak-password':
          return left(const AuthFailure.weakPassword());
          break;
        case 'invalid-email':
          return left(const AuthFailure.invalidEmail());
        default:
          return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signinWithEmailAndPassword({EmailAddress emailAddress, Password password}) async {
    final String emailValue = emailAddress.apiSafeValue();
    final String passwordValue = password.apiSafeValue();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: emailValue, password: passwordValue);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'wrong-password':
        case 'user-not-found':
        case 'user-disabled':
          return left(const AuthFailure.wrongEmailAndPasswordCombination());
          break;
        case 'invalid-email':
          return left(const AuthFailure.invalidEmail());
          break;
        case 'too-many-requests':
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
        final googleCredentials = GoogleAuthProvider.credential(
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

  @override
  Future<Option<SignedInUser>> getSignedInUser() async {
    final newUser = optionOf(_firebaseAuth.currentUser?.toDomain());
    return newUser;
  }

  @override
  Future<void> signout() => Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
}
