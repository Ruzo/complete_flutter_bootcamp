part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.authorized(SignedInUser user) = _Authorized;
  const factory UserState.unauthorized() = _Unauthorized;
}
