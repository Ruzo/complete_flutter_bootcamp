// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MessageEventTearOff {
  const _$MessageEventTearOff();

// ignore: unused_element
  _Sent sent({@required String author}) {
    return _Sent(
      author: author,
    );
  }

// ignore: unused_element
  _TextChanged textChanged(String text) {
    return _TextChanged(
      text,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MessageEvent = _$MessageEventTearOff();

/// @nodoc
mixin _$MessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult sent(String author),
    @required TResult textChanged(String text),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult sent(String author),
    TResult textChanged(String text),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult sent(_Sent value),
    @required TResult textChanged(_TextChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult sent(_Sent value),
    TResult textChanged(_TextChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res> implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  final MessageEvent _value;
  // ignore: unused_field
  final $Res Function(MessageEvent) _then;
}

/// @nodoc
abstract class _$SentCopyWith<$Res> {
  factory _$SentCopyWith(_Sent value, $Res Function(_Sent) then) =
      __$SentCopyWithImpl<$Res>;
  $Res call({String author});
}

/// @nodoc
class __$SentCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements _$SentCopyWith<$Res> {
  __$SentCopyWithImpl(_Sent _value, $Res Function(_Sent) _then)
      : super(_value, (v) => _then(v as _Sent));

  @override
  _Sent get _value => super._value as _Sent;

  @override
  $Res call({
    Object author = freezed,
  }) {
    return _then(_Sent(
      author: author == freezed ? _value.author : author as String,
    ));
  }
}

/// @nodoc
class _$_Sent implements _Sent {
  const _$_Sent({@required this.author}) : assert(author != null);

  @override // @required MessageText text,
  final String author;

  @override
  String toString() {
    return 'MessageEvent.sent(author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sent &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(author);

  @JsonKey(ignore: true)
  @override
  _$SentCopyWith<_Sent> get copyWith =>
      __$SentCopyWithImpl<_Sent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult sent(String author),
    @required TResult textChanged(String text),
  }) {
    assert(sent != null);
    assert(textChanged != null);
    return sent(author);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult sent(String author),
    TResult textChanged(String text),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sent != null) {
      return sent(author);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult sent(_Sent value),
    @required TResult textChanged(_TextChanged value),
  }) {
    assert(sent != null);
    assert(textChanged != null);
    return sent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult sent(_Sent value),
    TResult textChanged(_TextChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sent != null) {
      return sent(this);
    }
    return orElse();
  }
}

abstract class _Sent implements MessageEvent {
  const factory _Sent({@required String author}) = _$_Sent;

// @required MessageText text,
  String get author;
  @JsonKey(ignore: true)
  _$SentCopyWith<_Sent> get copyWith;
}

/// @nodoc
abstract class _$TextChangedCopyWith<$Res> {
  factory _$TextChangedCopyWith(
          _TextChanged value, $Res Function(_TextChanged) then) =
      __$TextChangedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$TextChangedCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements _$TextChangedCopyWith<$Res> {
  __$TextChangedCopyWithImpl(
      _TextChanged _value, $Res Function(_TextChanged) _then)
      : super(_value, (v) => _then(v as _TextChanged));

  @override
  _TextChanged get _value => super._value as _TextChanged;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_TextChanged(
      text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$_TextChanged implements _TextChanged {
  const _$_TextChanged(this.text) : assert(text != null);

  @override
  final String text;

  @override
  String toString() {
    return 'MessageEvent.textChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextChanged &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$TextChangedCopyWith<_TextChanged> get copyWith =>
      __$TextChangedCopyWithImpl<_TextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult sent(String author),
    @required TResult textChanged(String text),
  }) {
    assert(sent != null);
    assert(textChanged != null);
    return textChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult sent(String author),
    TResult textChanged(String text),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (textChanged != null) {
      return textChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult sent(_Sent value),
    @required TResult textChanged(_TextChanged value),
  }) {
    assert(sent != null);
    assert(textChanged != null);
    return textChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult sent(_Sent value),
    TResult textChanged(_TextChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (textChanged != null) {
      return textChanged(this);
    }
    return orElse();
  }
}

abstract class _TextChanged implements MessageEvent {
  const factory _TextChanged(String text) = _$_TextChanged;

  String get text;
  @JsonKey(ignore: true)
  _$TextChangedCopyWith<_TextChanged> get copyWith;
}

/// @nodoc
class _$MessageStateTearOff {
  const _$MessageStateTearOff();

// ignore: unused_element
  _MessageState call(
      {@required MessageText text,
      @required bool showErrorMessage,
      @required bool isSending,
      @required MessageFailure failure}) {
    return _MessageState(
      text: text,
      showErrorMessage: showErrorMessage,
      isSending: isSending,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MessageState = _$MessageStateTearOff();

/// @nodoc
mixin _$MessageState {
  MessageText get text;
  bool get showErrorMessage;
  bool get isSending;
  MessageFailure get failure;

  @JsonKey(ignore: true)
  $MessageStateCopyWith<MessageState> get copyWith;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res>;
  $Res call(
      {MessageText text,
      bool showErrorMessage,
      bool isSending,
      MessageFailure failure});

  $MessageFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res> implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  final MessageState _value;
  // ignore: unused_field
  final $Res Function(MessageState) _then;

  @override
  $Res call({
    Object text = freezed,
    Object showErrorMessage = freezed,
    Object isSending = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as MessageText,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isSending: isSending == freezed ? _value.isSending : isSending as bool,
      failure: failure == freezed ? _value.failure : failure as MessageFailure,
    ));
  }

  @override
  $MessageFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $MessageFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$MessageStateCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$MessageStateCopyWith(
          _MessageState value, $Res Function(_MessageState) then) =
      __$MessageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MessageText text,
      bool showErrorMessage,
      bool isSending,
      MessageFailure failure});

  @override
  $MessageFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$MessageStateCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$MessageStateCopyWith<$Res> {
  __$MessageStateCopyWithImpl(
      _MessageState _value, $Res Function(_MessageState) _then)
      : super(_value, (v) => _then(v as _MessageState));

  @override
  _MessageState get _value => super._value as _MessageState;

  @override
  $Res call({
    Object text = freezed,
    Object showErrorMessage = freezed,
    Object isSending = freezed,
    Object failure = freezed,
  }) {
    return _then(_MessageState(
      text: text == freezed ? _value.text : text as MessageText,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isSending: isSending == freezed ? _value.isSending : isSending as bool,
      failure: failure == freezed ? _value.failure : failure as MessageFailure,
    ));
  }
}

/// @nodoc
class _$_MessageState implements _MessageState {
  const _$_MessageState(
      {@required this.text,
      @required this.showErrorMessage,
      @required this.isSending,
      @required this.failure})
      : assert(text != null),
        assert(showErrorMessage != null),
        assert(isSending != null),
        assert(failure != null);

  @override
  final MessageText text;
  @override
  final bool showErrorMessage;
  @override
  final bool isSending;
  @override
  final MessageFailure failure;

  @override
  String toString() {
    return 'MessageState(text: $text, showErrorMessage: $showErrorMessage, isSending: $isSending, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageState &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.isSending, isSending) ||
                const DeepCollectionEquality()
                    .equals(other.isSending, isSending)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isSending) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$MessageStateCopyWith<_MessageState> get copyWith =>
      __$MessageStateCopyWithImpl<_MessageState>(this, _$identity);
}

abstract class _MessageState implements MessageState {
  const factory _MessageState(
      {@required MessageText text,
      @required bool showErrorMessage,
      @required bool isSending,
      @required MessageFailure failure}) = _$_MessageState;

  @override
  MessageText get text;
  @override
  bool get showErrorMessage;
  @override
  bool get isSending;
  @override
  MessageFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$MessageStateCopyWith<_MessageState> get copyWith;
}
