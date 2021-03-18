import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/core/value_failures.dart';
import 'package:flash_chat/domain/core/value_objects.dart';
import 'package:flash_chat/domain/core/value_validators.dart';

class MessageText extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory MessageText(String input) {
    return MessageText._(validateMessage(input));
  }
  const MessageText._(this.value);

  bool get isValid => value.isRight();
}
