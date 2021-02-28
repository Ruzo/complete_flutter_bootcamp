import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/core/value_errors.dart';
import 'package:uuid/uuid.dart';
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

class UniqueID extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueID() {
    return UniqueID._(
      right(Uuid().v1()),
    );
  }

  factory UniqueID.fromUniqueString(String id) {
    assert(id != null);
    return UniqueID._(
      right(id),
    );
  }

  const UniqueID._(this.value);
}
