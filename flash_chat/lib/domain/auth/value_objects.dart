import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/core/value_failures.dart';
import 'package:flash_chat/domain/core/value_objects.dart';
import 'package:flash_chat/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String email) {
    assert(email != null);
    return EmailAddress._(validateEmailAddress(email));
  }

  const EmailAddress._(
    this.value,
  );

  bool get isValid => value.isRight();
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String password) {
    assert(password != null);
    return Password._(validatePassword(password));
  }

  const Password._(this.value);

  bool get isValid => value.isRight();
}
