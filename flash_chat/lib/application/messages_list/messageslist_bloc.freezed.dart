// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'messageslist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MessageslistEventTearOff {
  const _$MessageslistEventTearOff();

// ignore: unused_element
  _MessagesReceived messagesReceived(
      Either<MessageFailure, List<Message>> failureOrMessages) {
    return _MessagesReceived(
      failureOrMessages,
    );
  }

// ignore: unused_element
  _WatchMessages watchMessages() {
    return const _WatchMessages();
  }
}

/// @nodoc
// ignore: unused_element
const $MessageslistEvent = _$MessageslistEventTearOff();

/// @nodoc
mixin _$MessageslistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult messagesReceived(
            Either<MessageFailure, List<Message>> failureOrMessages),
    @required TResult watchMessages(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult messagesReceived(
        Either<MessageFailure, List<Message>> failureOrMessages),
    TResult watchMessages(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult messagesReceived(_MessagesReceived value),
    @required TResult watchMessages(_WatchMessages value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult messagesReceived(_MessagesReceived value),
    TResult watchMessages(_WatchMessages value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MessageslistEventCopyWith<$Res> {
  factory $MessageslistEventCopyWith(
          MessageslistEvent value, $Res Function(MessageslistEvent) then) =
      _$MessageslistEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageslistEventCopyWithImpl<$Res>
    implements $MessageslistEventCopyWith<$Res> {
  _$MessageslistEventCopyWithImpl(this._value, this._then);

  final MessageslistEvent _value;
  // ignore: unused_field
  final $Res Function(MessageslistEvent) _then;
}

/// @nodoc
abstract class _$MessagesReceivedCopyWith<$Res> {
  factory _$MessagesReceivedCopyWith(
          _MessagesReceived value, $Res Function(_MessagesReceived) then) =
      __$MessagesReceivedCopyWithImpl<$Res>;
  $Res call({Either<MessageFailure, List<Message>> failureOrMessages});
}

/// @nodoc
class __$MessagesReceivedCopyWithImpl<$Res>
    extends _$MessageslistEventCopyWithImpl<$Res>
    implements _$MessagesReceivedCopyWith<$Res> {
  __$MessagesReceivedCopyWithImpl(
      _MessagesReceived _value, $Res Function(_MessagesReceived) _then)
      : super(_value, (v) => _then(v as _MessagesReceived));

  @override
  _MessagesReceived get _value => super._value as _MessagesReceived;

  @override
  $Res call({
    Object failureOrMessages = freezed,
  }) {
    return _then(_MessagesReceived(
      failureOrMessages == freezed
          ? _value.failureOrMessages
          : failureOrMessages as Either<MessageFailure, List<Message>>,
    ));
  }
}

/// @nodoc
class _$_MessagesReceived implements _MessagesReceived {
  const _$_MessagesReceived(this.failureOrMessages)
      : assert(failureOrMessages != null);

  @override
  final Either<MessageFailure, List<Message>> failureOrMessages;

  @override
  String toString() {
    return 'MessageslistEvent.messagesReceived(failureOrMessages: $failureOrMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessagesReceived &&
            (identical(other.failureOrMessages, failureOrMessages) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrMessages, failureOrMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrMessages);

  @JsonKey(ignore: true)
  @override
  _$MessagesReceivedCopyWith<_MessagesReceived> get copyWith =>
      __$MessagesReceivedCopyWithImpl<_MessagesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult messagesReceived(
            Either<MessageFailure, List<Message>> failureOrMessages),
    @required TResult watchMessages(),
  }) {
    assert(messagesReceived != null);
    assert(watchMessages != null);
    return messagesReceived(failureOrMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult messagesReceived(
        Either<MessageFailure, List<Message>> failureOrMessages),
    TResult watchMessages(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (messagesReceived != null) {
      return messagesReceived(failureOrMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult messagesReceived(_MessagesReceived value),
    @required TResult watchMessages(_WatchMessages value),
  }) {
    assert(messagesReceived != null);
    assert(watchMessages != null);
    return messagesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult messagesReceived(_MessagesReceived value),
    TResult watchMessages(_WatchMessages value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (messagesReceived != null) {
      return messagesReceived(this);
    }
    return orElse();
  }
}

abstract class _MessagesReceived implements MessageslistEvent {
  const factory _MessagesReceived(
          Either<MessageFailure, List<Message>> failureOrMessages) =
      _$_MessagesReceived;

  Either<MessageFailure, List<Message>> get failureOrMessages;
  @JsonKey(ignore: true)
  _$MessagesReceivedCopyWith<_MessagesReceived> get copyWith;
}

/// @nodoc
abstract class _$WatchMessagesCopyWith<$Res> {
  factory _$WatchMessagesCopyWith(
          _WatchMessages value, $Res Function(_WatchMessages) then) =
      __$WatchMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchMessagesCopyWithImpl<$Res>
    extends _$MessageslistEventCopyWithImpl<$Res>
    implements _$WatchMessagesCopyWith<$Res> {
  __$WatchMessagesCopyWithImpl(
      _WatchMessages _value, $Res Function(_WatchMessages) _then)
      : super(_value, (v) => _then(v as _WatchMessages));

  @override
  _WatchMessages get _value => super._value as _WatchMessages;
}

/// @nodoc
class _$_WatchMessages implements _WatchMessages {
  const _$_WatchMessages();

  @override
  String toString() {
    return 'MessageslistEvent.watchMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult messagesReceived(
            Either<MessageFailure, List<Message>> failureOrMessages),
    @required TResult watchMessages(),
  }) {
    assert(messagesReceived != null);
    assert(watchMessages != null);
    return watchMessages();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult messagesReceived(
        Either<MessageFailure, List<Message>> failureOrMessages),
    TResult watchMessages(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchMessages != null) {
      return watchMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult messagesReceived(_MessagesReceived value),
    @required TResult watchMessages(_WatchMessages value),
  }) {
    assert(messagesReceived != null);
    assert(watchMessages != null);
    return watchMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult messagesReceived(_MessagesReceived value),
    TResult watchMessages(_WatchMessages value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchMessages != null) {
      return watchMessages(this);
    }
    return orElse();
  }
}

abstract class _WatchMessages implements MessageslistEvent {
  const factory _WatchMessages() = _$_WatchMessages;
}

/// @nodoc
class _$MessageslistStateTearOff {
  const _$MessageslistStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadingMessages loadingMessages() {
    return const _LoadingMessages();
  }

// ignore: unused_element
  _LoadingSuccess loadingSuccess(List<Message> messages) {
    return _LoadingSuccess(
      messages,
    );
  }

// ignore: unused_element
  _LoadingFailure loadingFailure(MessageFailure failure) {
    return _LoadingFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MessageslistState = _$MessageslistStateTearOff();

/// @nodoc
mixin _$MessageslistState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingMessages(),
    @required TResult loadingSuccess(List<Message> messages),
    @required TResult loadingFailure(MessageFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingMessages(),
    TResult loadingSuccess(List<Message> messages),
    TResult loadingFailure(MessageFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingMessages(_LoadingMessages value),
    @required TResult loadingSuccess(_LoadingSuccess value),
    @required TResult loadingFailure(_LoadingFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingMessages(_LoadingMessages value),
    TResult loadingSuccess(_LoadingSuccess value),
    TResult loadingFailure(_LoadingFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MessageslistStateCopyWith<$Res> {
  factory $MessageslistStateCopyWith(
          MessageslistState value, $Res Function(MessageslistState) then) =
      _$MessageslistStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageslistStateCopyWithImpl<$Res>
    implements $MessageslistStateCopyWith<$Res> {
  _$MessageslistStateCopyWithImpl(this._value, this._then);

  final MessageslistState _value;
  // ignore: unused_field
  final $Res Function(MessageslistState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MessageslistStateCopyWithImpl<$Res>
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
    return 'MessageslistState.initial()';
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
    @required TResult loadingMessages(),
    @required TResult loadingSuccess(List<Message> messages),
    @required TResult loadingFailure(MessageFailure failure),
  }) {
    assert(initial != null);
    assert(loadingMessages != null);
    assert(loadingSuccess != null);
    assert(loadingFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingMessages(),
    TResult loadingSuccess(List<Message> messages),
    TResult loadingFailure(MessageFailure failure),
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
    @required TResult loadingMessages(_LoadingMessages value),
    @required TResult loadingSuccess(_LoadingSuccess value),
    @required TResult loadingFailure(_LoadingFailure value),
  }) {
    assert(initial != null);
    assert(loadingMessages != null);
    assert(loadingSuccess != null);
    assert(loadingFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingMessages(_LoadingMessages value),
    TResult loadingSuccess(_LoadingSuccess value),
    TResult loadingFailure(_LoadingFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MessageslistState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingMessagesCopyWith<$Res> {
  factory _$LoadingMessagesCopyWith(
          _LoadingMessages value, $Res Function(_LoadingMessages) then) =
      __$LoadingMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingMessagesCopyWithImpl<$Res>
    extends _$MessageslistStateCopyWithImpl<$Res>
    implements _$LoadingMessagesCopyWith<$Res> {
  __$LoadingMessagesCopyWithImpl(
      _LoadingMessages _value, $Res Function(_LoadingMessages) _then)
      : super(_value, (v) => _then(v as _LoadingMessages));

  @override
  _LoadingMessages get _value => super._value as _LoadingMessages;
}

/// @nodoc
class _$_LoadingMessages implements _LoadingMessages {
  const _$_LoadingMessages();

  @override
  String toString() {
    return 'MessageslistState.loadingMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingMessages(),
    @required TResult loadingSuccess(List<Message> messages),
    @required TResult loadingFailure(MessageFailure failure),
  }) {
    assert(initial != null);
    assert(loadingMessages != null);
    assert(loadingSuccess != null);
    assert(loadingFailure != null);
    return loadingMessages();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingMessages(),
    TResult loadingSuccess(List<Message> messages),
    TResult loadingFailure(MessageFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingMessages != null) {
      return loadingMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingMessages(_LoadingMessages value),
    @required TResult loadingSuccess(_LoadingSuccess value),
    @required TResult loadingFailure(_LoadingFailure value),
  }) {
    assert(initial != null);
    assert(loadingMessages != null);
    assert(loadingSuccess != null);
    assert(loadingFailure != null);
    return loadingMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingMessages(_LoadingMessages value),
    TResult loadingSuccess(_LoadingSuccess value),
    TResult loadingFailure(_LoadingFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingMessages != null) {
      return loadingMessages(this);
    }
    return orElse();
  }
}

abstract class _LoadingMessages implements MessageslistState {
  const factory _LoadingMessages() = _$_LoadingMessages;
}

/// @nodoc
abstract class _$LoadingSuccessCopyWith<$Res> {
  factory _$LoadingSuccessCopyWith(
          _LoadingSuccess value, $Res Function(_LoadingSuccess) then) =
      __$LoadingSuccessCopyWithImpl<$Res>;
  $Res call({List<Message> messages});
}

/// @nodoc
class __$LoadingSuccessCopyWithImpl<$Res>
    extends _$MessageslistStateCopyWithImpl<$Res>
    implements _$LoadingSuccessCopyWith<$Res> {
  __$LoadingSuccessCopyWithImpl(
      _LoadingSuccess _value, $Res Function(_LoadingSuccess) _then)
      : super(_value, (v) => _then(v as _LoadingSuccess));

  @override
  _LoadingSuccess get _value => super._value as _LoadingSuccess;

  @override
  $Res call({
    Object messages = freezed,
  }) {
    return _then(_LoadingSuccess(
      messages == freezed ? _value.messages : messages as List<Message>,
    ));
  }
}

/// @nodoc
class _$_LoadingSuccess implements _LoadingSuccess {
  const _$_LoadingSuccess(this.messages) : assert(messages != null);

  @override
  final List<Message> messages;

  @override
  String toString() {
    return 'MessageslistState.loadingSuccess(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingSuccess &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messages);

  @JsonKey(ignore: true)
  @override
  _$LoadingSuccessCopyWith<_LoadingSuccess> get copyWith =>
      __$LoadingSuccessCopyWithImpl<_LoadingSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingMessages(),
    @required TResult loadingSuccess(List<Message> messages),
    @required TResult loadingFailure(MessageFailure failure),
  }) {
    assert(initial != null);
    assert(loadingMessages != null);
    assert(loadingSuccess != null);
    assert(loadingFailure != null);
    return loadingSuccess(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingMessages(),
    TResult loadingSuccess(List<Message> messages),
    TResult loadingFailure(MessageFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingSuccess != null) {
      return loadingSuccess(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingMessages(_LoadingMessages value),
    @required TResult loadingSuccess(_LoadingSuccess value),
    @required TResult loadingFailure(_LoadingFailure value),
  }) {
    assert(initial != null);
    assert(loadingMessages != null);
    assert(loadingSuccess != null);
    assert(loadingFailure != null);
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingMessages(_LoadingMessages value),
    TResult loadingSuccess(_LoadingSuccess value),
    TResult loadingFailure(_LoadingFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadingSuccess implements MessageslistState {
  const factory _LoadingSuccess(List<Message> messages) = _$_LoadingSuccess;

  List<Message> get messages;
  @JsonKey(ignore: true)
  _$LoadingSuccessCopyWith<_LoadingSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadingFailureCopyWith<$Res> {
  factory _$LoadingFailureCopyWith(
          _LoadingFailure value, $Res Function(_LoadingFailure) then) =
      __$LoadingFailureCopyWithImpl<$Res>;
  $Res call({MessageFailure failure});

  $MessageFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadingFailureCopyWithImpl<$Res>
    extends _$MessageslistStateCopyWithImpl<$Res>
    implements _$LoadingFailureCopyWith<$Res> {
  __$LoadingFailureCopyWithImpl(
      _LoadingFailure _value, $Res Function(_LoadingFailure) _then)
      : super(_value, (v) => _then(v as _LoadingFailure));

  @override
  _LoadingFailure get _value => super._value as _LoadingFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadingFailure(
      failure == freezed ? _value.failure : failure as MessageFailure,
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
class _$_LoadingFailure implements _LoadingFailure {
  const _$_LoadingFailure(this.failure) : assert(failure != null);

  @override
  final MessageFailure failure;

  @override
  String toString() {
    return 'MessageslistState.loadingFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadingFailureCopyWith<_LoadingFailure> get copyWith =>
      __$LoadingFailureCopyWithImpl<_LoadingFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingMessages(),
    @required TResult loadingSuccess(List<Message> messages),
    @required TResult loadingFailure(MessageFailure failure),
  }) {
    assert(initial != null);
    assert(loadingMessages != null);
    assert(loadingSuccess != null);
    assert(loadingFailure != null);
    return loadingFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingMessages(),
    TResult loadingSuccess(List<Message> messages),
    TResult loadingFailure(MessageFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingFailure != null) {
      return loadingFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingMessages(_LoadingMessages value),
    @required TResult loadingSuccess(_LoadingSuccess value),
    @required TResult loadingFailure(_LoadingFailure value),
  }) {
    assert(initial != null);
    assert(loadingMessages != null);
    assert(loadingSuccess != null);
    assert(loadingFailure != null);
    return loadingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingMessages(_LoadingMessages value),
    TResult loadingSuccess(_LoadingSuccess value),
    TResult loadingFailure(_LoadingFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingFailure != null) {
      return loadingFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadingFailure implements MessageslistState {
  const factory _LoadingFailure(MessageFailure failure) = _$_LoadingFailure;

  MessageFailure get failure;
  @JsonKey(ignore: true)
  _$LoadingFailureCopyWith<_LoadingFailure> get copyWith;
}
