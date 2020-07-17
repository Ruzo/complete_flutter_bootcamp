import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/core/value_failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String email) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(email)) return right(email);
  return left(ValueFailure.invalidEmail(failedValue: email));
}

Either<ValueFailure<String>, String> validatePassword(String password) {
  if (password.length >= 6) return right(password);
  return left(ValueFailure.shortPassword(failedValue: password));
}
