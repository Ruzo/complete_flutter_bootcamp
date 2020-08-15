import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/core/value_errors.dart';
import 'value_failures.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T apiSafeValue() => value.fold((f) => throw UnexpectedValueError(f), (r) => r);

  @override
  String toString() => 'Value(value: $value)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
