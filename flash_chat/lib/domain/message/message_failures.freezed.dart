// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MessageFailureTearOff {
  const _$MessageFailureTearOff();

// ignore: unused_element
  UnexpectedError unexpectedError(String errorMessage) {
    return UnexpectedError(
      errorMessage,
    );
  }

// ignore: unused_element
  None none() {
    return const None();
  }
}

/// @nodoc
// ignore: unused_element
const $MessageFailure = _$MessageFailureTearOff();

/// @nodoc
mixin _$MessageFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpectedError(String errorMessage),
    @required TResult none(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedError(String errorMessage),
    TResult none(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpectedError(UnexpectedError value),
    @required TResult none(None value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedError(UnexpectedError value),
    TResult none(None value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MessageFailureCopyWith<$Res> {
  factory $MessageFailureCopyWith(
          MessageFailure value, $Res Function(MessageFailure) then) =
      _$MessageFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageFailureCopyWithImpl<$Res>
    implements $MessageFailureCopyWith<$Res> {
  _$MessageFailureCopyWithImpl(this._value, this._then);

  final MessageFailure _value;
  // ignore: unused_field
  final $Res Function(MessageFailure) _then;
}

/// @nodoc
abstract class $UnexpectedErrorCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(
          UnexpectedError value, $Res Function(UnexpectedError) then) =
      _$UnexpectedErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$UnexpectedErrorCopyWithImpl<$Res>
    extends _$MessageFailureCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(
      UnexpectedError _value, $Res Function(UnexpectedError) _then)
      : super(_value, (v) => _then(v as UnexpectedError));

  @override
  UnexpectedError get _value => super._value as UnexpectedError;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(UnexpectedError(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$UnexpectedError
    with DiagnosticableTreeMixin
    implements UnexpectedError {
  const _$UnexpectedError(this.errorMessage) : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageFailure.unexpectedError(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageFailure.unexpectedError'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnexpectedError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $UnexpectedErrorCopyWith<UnexpectedError> get copyWith =>
      _$UnexpectedErrorCopyWithImpl<UnexpectedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpectedError(String errorMessage),
    @required TResult none(),
  }) {
    assert(unexpectedError != null);
    assert(none != null);
    return unexpectedError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedError(String errorMessage),
    TResult none(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpectedError(UnexpectedError value),
    @required TResult none(None value),
  }) {
    assert(unexpectedError != null);
    assert(none != null);
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedError(UnexpectedError value),
    TResult none(None value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements MessageFailure {
  const factory UnexpectedError(String errorMessage) = _$UnexpectedError;

  String get errorMessage;
  @JsonKey(ignore: true)
  $UnexpectedErrorCopyWith<UnexpectedError> get copyWith;
}

/// @nodoc
abstract class $NoneCopyWith<$Res> {
  factory $NoneCopyWith(None value, $Res Function(None) then) =
      _$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoneCopyWithImpl<$Res> extends _$MessageFailureCopyWithImpl<$Res>
    implements $NoneCopyWith<$Res> {
  _$NoneCopyWithImpl(None _value, $Res Function(None) _then)
      : super(_value, (v) => _then(v as None));

  @override
  None get _value => super._value as None;
}

/// @nodoc
class _$None with DiagnosticableTreeMixin implements None {
  const _$None();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageFailure.none()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MessageFailure.none'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpectedError(String errorMessage),
    @required TResult none(),
  }) {
    assert(unexpectedError != null);
    assert(none != null);
    return none();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedError(String errorMessage),
    TResult none(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpectedError(UnexpectedError value),
    @required TResult none(None value),
  }) {
    assert(unexpectedError != null);
    assert(none != null);
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedError(UnexpectedError value),
    TResult none(None value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class None implements MessageFailure {
  const factory None() = _$None;
}
