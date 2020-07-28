// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signin_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SigninFormEventTearOff {
  const _$SigninFormEventTearOff();

// ignore: unused_element
  SigninWithEmailAndPasswordPressed signinWithEmailAndPasswordPressed() {
    return const SigninWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const RegisterWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  SigninWithGoogle signinWithGoogle() {
    return const SigninWithGoogle();
  }

// ignore: unused_element
  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }
}

// ignore: unused_element
const $SigninFormEvent = _$SigninFormEventTearOff();

mixin _$SigninFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signinWithEmailAndPasswordPressed(),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signinWithGoogle(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(),
    Result registerWithEmailAndPasswordPressed(),
    Result signinWithGoogle(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result signinWithEmailAndPasswordPressed(
            SigninWithEmailAndPasswordPressed value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required Result signinWithGoogle(SigninWithGoogle value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(
        SigninWithEmailAndPasswordPressed value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signinWithGoogle(SigninWithGoogle value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  });
}

abstract class $SigninFormEventCopyWith<$Res> {
  factory $SigninFormEventCopyWith(
          SigninFormEvent value, $Res Function(SigninFormEvent) then) =
      _$SigninFormEventCopyWithImpl<$Res>;
}

class _$SigninFormEventCopyWithImpl<$Res>
    implements $SigninFormEventCopyWith<$Res> {
  _$SigninFormEventCopyWithImpl(this._value, this._then);

  final SigninFormEvent _value;
  // ignore: unused_field
  final $Res Function(SigninFormEvent) _then;
}

abstract class $SigninWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SigninWithEmailAndPasswordPressedCopyWith(
          SigninWithEmailAndPasswordPressed value,
          $Res Function(SigninWithEmailAndPasswordPressed) then) =
      _$SigninWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

class _$SigninWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SigninFormEventCopyWithImpl<$Res>
    implements $SigninWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SigninWithEmailAndPasswordPressedCopyWithImpl(
      SigninWithEmailAndPasswordPressed _value,
      $Res Function(SigninWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SigninWithEmailAndPasswordPressed));

  @override
  SigninWithEmailAndPasswordPressed get _value =>
      super._value as SigninWithEmailAndPasswordPressed;
}

class _$SigninWithEmailAndPasswordPressed
    implements SigninWithEmailAndPasswordPressed {
  const _$SigninWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SigninFormEvent.signinWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SigninWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signinWithEmailAndPasswordPressed(),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signinWithGoogle(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  }) {
    assert(signinWithEmailAndPasswordPressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signinWithGoogle != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return signinWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(),
    Result registerWithEmailAndPasswordPressed(),
    Result signinWithGoogle(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signinWithEmailAndPasswordPressed != null) {
      return signinWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result signinWithEmailAndPasswordPressed(
            SigninWithEmailAndPasswordPressed value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required Result signinWithGoogle(SigninWithGoogle value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  }) {
    assert(signinWithEmailAndPasswordPressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signinWithGoogle != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return signinWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(
        SigninWithEmailAndPasswordPressed value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signinWithGoogle(SigninWithGoogle value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signinWithEmailAndPasswordPressed != null) {
      return signinWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SigninWithEmailAndPasswordPressed implements SigninFormEvent {
  const factory SigninWithEmailAndPasswordPressed() =
      _$SigninWithEmailAndPasswordPressed;
}

abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SigninFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SigninFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signinWithEmailAndPasswordPressed(),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signinWithGoogle(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  }) {
    assert(signinWithEmailAndPasswordPressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signinWithGoogle != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(),
    Result registerWithEmailAndPasswordPressed(),
    Result signinWithGoogle(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result signinWithEmailAndPasswordPressed(
            SigninWithEmailAndPasswordPressed value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required Result signinWithGoogle(SigninWithGoogle value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  }) {
    assert(signinWithEmailAndPasswordPressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signinWithGoogle != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(
        SigninWithEmailAndPasswordPressed value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signinWithGoogle(SigninWithGoogle value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SigninFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

abstract class $SigninWithGoogleCopyWith<$Res> {
  factory $SigninWithGoogleCopyWith(
          SigninWithGoogle value, $Res Function(SigninWithGoogle) then) =
      _$SigninWithGoogleCopyWithImpl<$Res>;
}

class _$SigninWithGoogleCopyWithImpl<$Res>
    extends _$SigninFormEventCopyWithImpl<$Res>
    implements $SigninWithGoogleCopyWith<$Res> {
  _$SigninWithGoogleCopyWithImpl(
      SigninWithGoogle _value, $Res Function(SigninWithGoogle) _then)
      : super(_value, (v) => _then(v as SigninWithGoogle));

  @override
  SigninWithGoogle get _value => super._value as SigninWithGoogle;
}

class _$SigninWithGoogle implements SigninWithGoogle {
  const _$SigninWithGoogle();

  @override
  String toString() {
    return 'SigninFormEvent.signinWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SigninWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signinWithEmailAndPasswordPressed(),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signinWithGoogle(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  }) {
    assert(signinWithEmailAndPasswordPressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signinWithGoogle != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return signinWithGoogle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(),
    Result registerWithEmailAndPasswordPressed(),
    Result signinWithGoogle(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signinWithGoogle != null) {
      return signinWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result signinWithEmailAndPasswordPressed(
            SigninWithEmailAndPasswordPressed value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required Result signinWithGoogle(SigninWithGoogle value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  }) {
    assert(signinWithEmailAndPasswordPressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signinWithGoogle != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return signinWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(
        SigninWithEmailAndPasswordPressed value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signinWithGoogle(SigninWithGoogle value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signinWithGoogle != null) {
      return signinWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SigninWithGoogle implements SigninFormEvent {
  const factory SigninWithGoogle() = _$SigninWithGoogle;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$SigninFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SigninFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signinWithEmailAndPasswordPressed(),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signinWithGoogle(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  }) {
    assert(signinWithEmailAndPasswordPressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signinWithGoogle != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(),
    Result registerWithEmailAndPasswordPressed(),
    Result signinWithGoogle(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result signinWithEmailAndPasswordPressed(
            SigninWithEmailAndPasswordPressed value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required Result signinWithGoogle(SigninWithGoogle value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  }) {
    assert(signinWithEmailAndPasswordPressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signinWithGoogle != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(
        SigninWithEmailAndPasswordPressed value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signinWithGoogle(SigninWithGoogle value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SigninFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SigninFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SigninFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signinWithEmailAndPasswordPressed(),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signinWithGoogle(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  }) {
    assert(signinWithEmailAndPasswordPressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signinWithGoogle != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(),
    Result registerWithEmailAndPasswordPressed(),
    Result signinWithGoogle(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result signinWithEmailAndPasswordPressed(
            SigninWithEmailAndPasswordPressed value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required Result signinWithGoogle(SigninWithGoogle value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  }) {
    assert(signinWithEmailAndPasswordPressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signinWithGoogle != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signinWithEmailAndPasswordPressed(
        SigninWithEmailAndPasswordPressed value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signinWithGoogle(SigninWithGoogle value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SigninFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

class _$SigninFormStateTearOff {
  const _$SigninFormStateTearOff();

// ignore: unused_element
  _SigninFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SigninFormState(
      emailAddress: emailAddress,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SigninFormState = _$SigninFormStateTearOff();

mixin _$SigninFormState {
  EmailAddress get emailAddress;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $SigninFormStateCopyWith<SigninFormState> get copyWith;
}

abstract class $SigninFormStateCopyWith<$Res> {
  factory $SigninFormStateCopyWith(
          SigninFormState value, $Res Function(SigninFormState) then) =
      _$SigninFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$SigninFormStateCopyWithImpl<$Res>
    implements $SigninFormStateCopyWith<$Res> {
  _$SigninFormStateCopyWithImpl(this._value, this._then);

  final SigninFormState _value;
  // ignore: unused_field
  final $Res Function(SigninFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$SigninFormStateCopyWith<$Res>
    implements $SigninFormStateCopyWith<$Res> {
  factory _$SigninFormStateCopyWith(
          _SigninFormState value, $Res Function(_SigninFormState) then) =
      __$SigninFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class __$SigninFormStateCopyWithImpl<$Res>
    extends _$SigninFormStateCopyWithImpl<$Res>
    implements _$SigninFormStateCopyWith<$Res> {
  __$SigninFormStateCopyWithImpl(
      _SigninFormState _value, $Res Function(_SigninFormState) _then)
      : super(_value, (v) => _then(v as _SigninFormState));

  @override
  _SigninFormState get _value => super._value as _SigninFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SigninFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_SigninFormState implements _SigninFormState {
  const _$_SigninFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SigninFormState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SigninFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$SigninFormStateCopyWith<_SigninFormState> get copyWith =>
      __$SigninFormStateCopyWithImpl<_SigninFormState>(this, _$identity);
}

abstract class _SigninFormState implements SigninFormState {
  const factory _SigninFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SigninFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$SigninFormStateCopyWith<_SigninFormState> get copyWith;
}
