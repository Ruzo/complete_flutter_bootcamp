// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// ignore: unused_element
T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  CanceledByUser canceledByUser() {
    return const CanceledByUser();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

// ignore: unused_element
  WrongEmailAndPasswordCombination wrongEmailAndPasswordCombination() {
    return const WrongEmailAndPasswordCombination();
  }

// ignore: unused_element
  WeakPassword weakPassword() {
    return const WeakPassword();
  }

// ignore: unused_element
  InvalidEmail invalidEmail() {
    return const InvalidEmail();
  }

// ignore: unused_element
  TooManyRequests tooManyRequests() {
    return const TooManyRequests();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result wrongEmailAndPasswordCombination(),
    @required Result weakPassword(),
    @required Result invalidEmail(),
    @required Result tooManyRequests(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result wrongEmailAndPasswordCombination(),
    Result weakPassword(),
    Result invalidEmail(),
    Result tooManyRequests(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    @required Result weakPassword(WeakPassword value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result tooManyRequests(TooManyRequests value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    Result weakPassword(WeakPassword value),
    Result invalidEmail(InvalidEmail value),
    Result tooManyRequests(TooManyRequests value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(AuthFailure value, $Res Function(AuthFailure) then) = _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $CanceledByUserCopyWith<$Res> {
  factory $CanceledByUserCopyWith(CanceledByUser value, $Res Function(CanceledByUser) then) =
      _$CanceledByUserCopyWithImpl<$Res>;
}

class _$CanceledByUserCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $CanceledByUserCopyWith<$Res> {
  _$CanceledByUserCopyWithImpl(CanceledByUser _value, $Res Function(CanceledByUser) _then)
      : super(_value, (v) => _then(v as CanceledByUser));

  @override
  CanceledByUser get _value => super._value as CanceledByUser;
}

class _$CanceledByUser with DiagnosticableTreeMixin implements CanceledByUser {
  const _$CanceledByUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.canceledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.canceledByUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CanceledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result wrongEmailAndPasswordCombination(),
    @required Result weakPassword(),
    @required Result invalidEmail(),
    @required Result tooManyRequests(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return canceledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result wrongEmailAndPasswordCombination(),
    Result weakPassword(),
    Result invalidEmail(),
    Result tooManyRequests(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceledByUser != null) {
      return canceledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    @required Result weakPassword(WeakPassword value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result tooManyRequests(TooManyRequests value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return canceledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    Result weakPassword(WeakPassword value),
    Result invalidEmail(InvalidEmail value),
    Result tooManyRequests(TooManyRequests value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceledByUser != null) {
      return canceledByUser(this);
    }
    return orElse();
  }
}

abstract class CanceledByUser implements AuthFailure {
  const factory CanceledByUser() = _$CanceledByUser;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(ServerError value, $Res Function(ServerError) then) = _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res> implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError with DiagnosticableTreeMixin implements ServerError {
  const _$ServerError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.serverError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.serverError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result wrongEmailAndPasswordCombination(),
    @required Result weakPassword(),
    @required Result invalidEmail(),
    @required Result tooManyRequests(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result wrongEmailAndPasswordCombination(),
    Result weakPassword(),
    Result invalidEmail(),
    Result tooManyRequests(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    @required Result weakPassword(WeakPassword value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result tooManyRequests(TooManyRequests value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    Result weakPassword(WeakPassword value),
    Result invalidEmail(InvalidEmail value),
    Result tooManyRequests(TooManyRequests value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

class _$EmailAlreadyInUseCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

class _$EmailAlreadyInUse with DiagnosticableTreeMixin implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.emailAlreadyInUse'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result wrongEmailAndPasswordCombination(),
    @required Result weakPassword(),
    @required Result invalidEmail(),
    @required Result tooManyRequests(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result wrongEmailAndPasswordCombination(),
    Result weakPassword(),
    Result invalidEmail(),
    Result tooManyRequests(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    @required Result weakPassword(WeakPassword value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result tooManyRequests(TooManyRequests value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    Result weakPassword(WeakPassword value),
    Result invalidEmail(InvalidEmail value),
    Result tooManyRequests(TooManyRequests value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

abstract class $WrongEmailAndPasswordCombinationCopyWith<$Res> {
  factory $WrongEmailAndPasswordCombinationCopyWith(
          WrongEmailAndPasswordCombination value, $Res Function(WrongEmailAndPasswordCombination) then) =
      _$WrongEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

class _$WrongEmailAndPasswordCombinationCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $WrongEmailAndPasswordCombinationCopyWith<$Res> {
  _$WrongEmailAndPasswordCombinationCopyWithImpl(
      WrongEmailAndPasswordCombination _value, $Res Function(WrongEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as WrongEmailAndPasswordCombination));

  @override
  WrongEmailAndPasswordCombination get _value => super._value as WrongEmailAndPasswordCombination;
}

class _$WrongEmailAndPasswordCombination with DiagnosticableTreeMixin implements WrongEmailAndPasswordCombination {
  const _$WrongEmailAndPasswordCombination();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.wrongEmailAndPasswordCombination()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.wrongEmailAndPasswordCombination'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WrongEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result wrongEmailAndPasswordCombination(),
    @required Result weakPassword(),
    @required Result invalidEmail(),
    @required Result tooManyRequests(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return wrongEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result wrongEmailAndPasswordCombination(),
    Result weakPassword(),
    Result invalidEmail(),
    Result tooManyRequests(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongEmailAndPasswordCombination != null) {
      return wrongEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    @required Result weakPassword(WeakPassword value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result tooManyRequests(TooManyRequests value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return wrongEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    Result weakPassword(WeakPassword value),
    Result invalidEmail(InvalidEmail value),
    Result tooManyRequests(TooManyRequests value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongEmailAndPasswordCombination != null) {
      return wrongEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class WrongEmailAndPasswordCombination implements AuthFailure {
  const factory WrongEmailAndPasswordCombination() = _$WrongEmailAndPasswordCombination;
}

abstract class $WeakPasswordCopyWith<$Res> {
  factory $WeakPasswordCopyWith(WeakPassword value, $Res Function(WeakPassword) then) =
      _$WeakPasswordCopyWithImpl<$Res>;
}

class _$WeakPasswordCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res> implements $WeakPasswordCopyWith<$Res> {
  _$WeakPasswordCopyWithImpl(WeakPassword _value, $Res Function(WeakPassword) _then)
      : super(_value, (v) => _then(v as WeakPassword));

  @override
  WeakPassword get _value => super._value as WeakPassword;
}

class _$WeakPassword with DiagnosticableTreeMixin implements WeakPassword {
  const _$WeakPassword();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.weakPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.weakPassword'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WeakPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result wrongEmailAndPasswordCombination(),
    @required Result weakPassword(),
    @required Result invalidEmail(),
    @required Result tooManyRequests(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result wrongEmailAndPasswordCombination(),
    Result weakPassword(),
    Result invalidEmail(),
    Result tooManyRequests(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weakPassword != null) {
      return weakPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    @required Result weakPassword(WeakPassword value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result tooManyRequests(TooManyRequests value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    Result weakPassword(WeakPassword value),
    Result invalidEmail(InvalidEmail value),
    Result tooManyRequests(TooManyRequests value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class WeakPassword implements AuthFailure {
  const factory WeakPassword() = _$WeakPassword;
}

abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
}

class _$InvalidEmailCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res> implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;
}

class _$InvalidEmail with DiagnosticableTreeMixin implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.invalidEmail()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.invalidEmail'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result wrongEmailAndPasswordCombination(),
    @required Result weakPassword(),
    @required Result invalidEmail(),
    @required Result tooManyRequests(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result wrongEmailAndPasswordCombination(),
    Result weakPassword(),
    Result invalidEmail(),
    Result tooManyRequests(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    @required Result weakPassword(WeakPassword value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result tooManyRequests(TooManyRequests value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    Result weakPassword(WeakPassword value),
    Result invalidEmail(InvalidEmail value),
    Result tooManyRequests(TooManyRequests value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements AuthFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}

abstract class $TooManyRequestsCopyWith<$Res> {
  factory $TooManyRequestsCopyWith(TooManyRequests value, $Res Function(TooManyRequests) then) =
      _$TooManyRequestsCopyWithImpl<$Res>;
}

class _$TooManyRequestsCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $TooManyRequestsCopyWith<$Res> {
  _$TooManyRequestsCopyWithImpl(TooManyRequests _value, $Res Function(TooManyRequests) _then)
      : super(_value, (v) => _then(v as TooManyRequests));

  @override
  TooManyRequests get _value => super._value as TooManyRequests;
}

class _$TooManyRequests with DiagnosticableTreeMixin implements TooManyRequests {
  const _$TooManyRequests();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.tooManyRequests()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.tooManyRequests'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TooManyRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result wrongEmailAndPasswordCombination(),
    @required Result weakPassword(),
    @required Result invalidEmail(),
    @required Result tooManyRequests(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result wrongEmailAndPasswordCombination(),
    Result weakPassword(),
    Result invalidEmail(),
    Result tooManyRequests(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    @required Result weakPassword(WeakPassword value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result tooManyRequests(TooManyRequests value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(wrongEmailAndPasswordCombination != null);
    assert(weakPassword != null);
    assert(invalidEmail != null);
    assert(tooManyRequests != null);
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result wrongEmailAndPasswordCombination(WrongEmailAndPasswordCombination value),
    Result weakPassword(WeakPassword value),
    Result invalidEmail(InvalidEmail value),
    Result tooManyRequests(TooManyRequests value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class TooManyRequests implements AuthFailure {
  const factory TooManyRequests() = _$TooManyRequests;
}
