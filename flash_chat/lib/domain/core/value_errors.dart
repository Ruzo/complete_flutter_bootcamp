import 'package:flash_chat/domain/core/value_failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(
    this.valueFailure,
  );

  @override
  String toString() {
    return Error.safeToString('Unexpected value error: $valueFailure! Terminating.');
  }
}
