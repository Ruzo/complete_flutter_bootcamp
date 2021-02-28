part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.getSignedInUser() = _GetSignedInUser;
  const factory UserEvent.signOut() = _SignOut;
}
