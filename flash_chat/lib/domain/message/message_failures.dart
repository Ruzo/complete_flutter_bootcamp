import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message_failures.freezed.dart';

@freezed
abstract class MessageFailure with _$MessageFailure {
  const factory MessageFailure.unexpected() = Unexpected;
}
