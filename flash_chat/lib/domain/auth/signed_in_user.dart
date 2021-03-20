import 'package:flash_chat/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signed_in_user.freezed.dart';

@freezed
abstract class SignedInUser with _$SignedInUser {
  const factory SignedInUser({
    @required UniqueID id,
    @required String email,
  }) = _SignedInUser;
}
