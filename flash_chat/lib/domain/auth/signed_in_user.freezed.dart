// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signed_in_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignedInUserTearOff {
  const _$SignedInUserTearOff();

// ignore: unused_element
  _SignedInUser call({@required UniqueID id}) {
    return _SignedInUser(
      id: id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignedInUser = _$SignedInUserTearOff();

/// @nodoc
mixin _$SignedInUser {
  UniqueID get id;

  @JsonKey(ignore: true)
  $SignedInUserCopyWith<SignedInUser> get copyWith;
}

/// @nodoc
abstract class $SignedInUserCopyWith<$Res> {
  factory $SignedInUserCopyWith(
          SignedInUser value, $Res Function(SignedInUser) then) =
      _$SignedInUserCopyWithImpl<$Res>;
  $Res call({UniqueID id});
}

/// @nodoc
class _$SignedInUserCopyWithImpl<$Res> implements $SignedInUserCopyWith<$Res> {
  _$SignedInUserCopyWithImpl(this._value, this._then);

  final SignedInUser _value;
  // ignore: unused_field
  final $Res Function(SignedInUser) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueID,
    ));
  }
}

/// @nodoc
abstract class _$SignedInUserCopyWith<$Res>
    implements $SignedInUserCopyWith<$Res> {
  factory _$SignedInUserCopyWith(
          _SignedInUser value, $Res Function(_SignedInUser) then) =
      __$SignedInUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueID id});
}

/// @nodoc
class __$SignedInUserCopyWithImpl<$Res> extends _$SignedInUserCopyWithImpl<$Res>
    implements _$SignedInUserCopyWith<$Res> {
  __$SignedInUserCopyWithImpl(
      _SignedInUser _value, $Res Function(_SignedInUser) _then)
      : super(_value, (v) => _then(v as _SignedInUser));

  @override
  _SignedInUser get _value => super._value as _SignedInUser;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_SignedInUser(
      id: id == freezed ? _value.id : id as UniqueID,
    ));
  }
}

/// @nodoc
class _$_SignedInUser implements _SignedInUser {
  const _$_SignedInUser({@required this.id}) : assert(id != null);

  @override
  final UniqueID id;

  @override
  String toString() {
    return 'SignedInUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignedInUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$SignedInUserCopyWith<_SignedInUser> get copyWith =>
      __$SignedInUserCopyWithImpl<_SignedInUser>(this, _$identity);
}

abstract class _SignedInUser implements SignedInUser {
  const factory _SignedInUser({@required UniqueID id}) = _$_SignedInUser;

  @override
  UniqueID get id;
  @override
  @JsonKey(ignore: true)
  _$SignedInUserCopyWith<_SignedInUser> get copyWith;
}
