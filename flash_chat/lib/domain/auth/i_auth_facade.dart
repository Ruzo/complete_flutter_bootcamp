import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/auth/auth_failures.dart';
import 'package:flash_chat/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signinWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signinWithGoogle();
}
