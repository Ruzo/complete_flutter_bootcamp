// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

// ignore: unused_element
  _GetSignedInUser getSignedInUser() {
    return const _GetSignedInUser();
  }

// ignore: unused_element
  _SignOut signOut() {
    return const _SignOut();
  }
}

/// @nodoc
// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getSignedInUser(),
    @required TResult signOut(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getSignedInUser(),
    TResult signOut(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getSignedInUser(_GetSignedInUser value),
    @required TResult signOut(_SignOut value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getSignedInUser(_GetSignedInUser value),
    TResult signOut(_SignOut value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class _$GetSignedInUserCopyWith<$Res> {
  factory _$GetSignedInUserCopyWith(
          _GetSignedInUser value, $Res Function(_GetSignedInUser) then) =
      __$GetSignedInUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetSignedInUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$GetSignedInUserCopyWith<$Res> {
  __$GetSignedInUserCopyWithImpl(
      _GetSignedInUser _value, $Res Function(_GetSignedInUser) _then)
      : super(_value, (v) => _then(v as _GetSignedInUser));

  @override
  _GetSignedInUser get _value => super._value as _GetSignedInUser;
}

/// @nodoc
class _$_GetSignedInUser implements _GetSignedInUser {
  const _$_GetSignedInUser();

  @override
  String toString() {
    return 'UserEvent.getSignedInUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetSignedInUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getSignedInUser(),
    @required TResult signOut(),
  }) {
    assert(getSignedInUser != null);
    assert(signOut != null);
    return getSignedInUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getSignedInUser(),
    TResult signOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getSignedInUser != null) {
      return getSignedInUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getSignedInUser(_GetSignedInUser value),
    @required TResult signOut(_SignOut value),
  }) {
    assert(getSignedInUser != null);
    assert(signOut != null);
    return getSignedInUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getSignedInUser(_GetSignedInUser value),
    TResult signOut(_SignOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getSignedInUser != null) {
      return getSignedInUser(this);
    }
    return orElse();
  }
}

abstract class _GetSignedInUser implements UserEvent {
  const factory _GetSignedInUser() = _$_GetSignedInUser;
}

/// @nodoc
abstract class _$SignOutCopyWith<$Res> {
  factory _$SignOutCopyWith(_SignOut value, $Res Function(_SignOut) then) =
      __$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$SignOutCopyWith<$Res> {
  __$SignOutCopyWithImpl(_SignOut _value, $Res Function(_SignOut) _then)
      : super(_value, (v) => _then(v as _SignOut));

  @override
  _SignOut get _value => super._value as _SignOut;
}

/// @nodoc
class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'UserEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getSignedInUser(),
    @required TResult signOut(),
  }) {
    assert(getSignedInUser != null);
    assert(signOut != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getSignedInUser(),
    TResult signOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getSignedInUser(_GetSignedInUser value),
    @required TResult signOut(_SignOut value),
  }) {
    assert(getSignedInUser != null);
    assert(signOut != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getSignedInUser(_GetSignedInUser value),
    TResult signOut(_SignOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements UserEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Authorized authorized(SignedInUser user) {
    return _Authorized(
      user,
    );
  }

// ignore: unused_element
  _Unauthorized unauthorized() {
    return const _Unauthorized();
  }
}

/// @nodoc
// ignore: unused_element
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authorized(SignedInUser user),
    @required TResult unauthorized(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authorized(SignedInUser user),
    TResult unauthorized(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authorized(_Authorized value),
    @required TResult unauthorized(_Unauthorized value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authorized(_Authorized value),
    TResult unauthorized(_Unauthorized value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authorized(SignedInUser user),
    @required TResult unauthorized(),
  }) {
    assert(initial != null);
    assert(authorized != null);
    assert(unauthorized != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authorized(SignedInUser user),
    TResult unauthorized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authorized(_Authorized value),
    @required TResult unauthorized(_Unauthorized value),
  }) {
    assert(initial != null);
    assert(authorized != null);
    assert(unauthorized != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authorized(_Authorized value),
    TResult unauthorized(_Unauthorized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthorizedCopyWith<$Res> {
  factory _$AuthorizedCopyWith(
          _Authorized value, $Res Function(_Authorized) then) =
      __$AuthorizedCopyWithImpl<$Res>;
  $Res call({SignedInUser user});

  $SignedInUserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthorizedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$AuthorizedCopyWith<$Res> {
  __$AuthorizedCopyWithImpl(
      _Authorized _value, $Res Function(_Authorized) _then)
      : super(_value, (v) => _then(v as _Authorized));

  @override
  _Authorized get _value => super._value as _Authorized;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Authorized(
      user == freezed ? _value.user : user as SignedInUser,
    ));
  }

  @override
  $SignedInUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $SignedInUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_Authorized implements _Authorized {
  const _$_Authorized(this.user) : assert(user != null);

  @override
  final SignedInUser user;

  @override
  String toString() {
    return 'UserState.authorized(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authorized &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$AuthorizedCopyWith<_Authorized> get copyWith =>
      __$AuthorizedCopyWithImpl<_Authorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authorized(SignedInUser user),
    @required TResult unauthorized(),
  }) {
    assert(initial != null);
    assert(authorized != null);
    assert(unauthorized != null);
    return authorized(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authorized(SignedInUser user),
    TResult unauthorized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authorized != null) {
      return authorized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authorized(_Authorized value),
    @required TResult unauthorized(_Unauthorized value),
  }) {
    assert(initial != null);
    assert(authorized != null);
    assert(unauthorized != null);
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authorized(_Authorized value),
    TResult unauthorized(_Unauthorized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized implements UserState {
  const factory _Authorized(SignedInUser user) = _$_Authorized;

  SignedInUser get user;
  @JsonKey(ignore: true)
  _$AuthorizedCopyWith<_Authorized> get copyWith;
}

/// @nodoc
abstract class _$UnauthorizedCopyWith<$Res> {
  factory _$UnauthorizedCopyWith(
          _Unauthorized value, $Res Function(_Unauthorized) then) =
      __$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthorizedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UnauthorizedCopyWith<$Res> {
  __$UnauthorizedCopyWithImpl(
      _Unauthorized _value, $Res Function(_Unauthorized) _then)
      : super(_value, (v) => _then(v as _Unauthorized));

  @override
  _Unauthorized get _value => super._value as _Unauthorized;
}

/// @nodoc
class _$_Unauthorized implements _Unauthorized {
  const _$_Unauthorized();

  @override
  String toString() {
    return 'UserState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authorized(SignedInUser user),
    @required TResult unauthorized(),
  }) {
    assert(initial != null);
    assert(authorized != null);
    assert(unauthorized != null);
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authorized(SignedInUser user),
    TResult unauthorized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authorized(_Authorized value),
    @required TResult unauthorized(_Unauthorized value),
  }) {
    assert(initial != null);
    assert(authorized != null);
    assert(unauthorized != null);
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authorized(_Authorized value),
    TResult unauthorized(_Unauthorized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements UserState {
  const factory _Unauthorized() = _$_Unauthorized;
}
