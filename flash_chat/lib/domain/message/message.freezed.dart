// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

// ignore: unused_element
  _Message call(
      {@required
          String author,
      @required
      @JsonKey(name: 'text', fromJson: textFromJSON, toJson: textToJSON)
          MessageText text,
      @required
      @JsonKey(name: 'timestamp', fromJson: timestampFromJSON, toJson: timestampToJSON)
          DateTime timestamp}) {
    return _Message(
      author: author,
      text: text,
      timestamp: timestamp,
    );
  }

// ignore: unused_element
  Message fromJson(Map<String, Object> json) {
    return Message.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  String get author;
  @JsonKey(name: 'text', fromJson: textFromJSON, toJson: textToJSON)
  MessageText get text;
  @JsonKey(
      name: 'timestamp', fromJson: timestampFromJSON, toJson: timestampToJSON)
  DateTime get timestamp;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {String author,
      @JsonKey(name: 'text', fromJson: textFromJSON, toJson: textToJSON)
          MessageText text,
      @JsonKey(name: 'timestamp', fromJson: timestampFromJSON, toJson: timestampToJSON)
          DateTime timestamp});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object author = freezed,
    Object text = freezed,
    Object timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed ? _value.author : author as String,
      text: text == freezed ? _value.text : text as MessageText,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String author,
      @JsonKey(name: 'text', fromJson: textFromJSON, toJson: textToJSON)
          MessageText text,
      @JsonKey(name: 'timestamp', fromJson: timestampFromJSON, toJson: timestampToJSON)
          DateTime timestamp});
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object author = freezed,
    Object text = freezed,
    Object timestamp = freezed,
  }) {
    return _then(_Message(
      author: author == freezed ? _value.author : author as String,
      text: text == freezed ? _value.text : text as MessageText,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Message implements _Message {
  const _$_Message(
      {@required
          this.author,
      @required
      @JsonKey(name: 'text', fromJson: textFromJSON, toJson: textToJSON)
          this.text,
      @required
      @JsonKey(name: 'timestamp', fromJson: timestampFromJSON, toJson: timestampToJSON)
          this.timestamp})
      : assert(author != null),
        assert(text != null),
        assert(timestamp != null);

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageFromJson(json);

  @override
  final String author;
  @override
  @JsonKey(name: 'text', fromJson: textFromJSON, toJson: textToJSON)
  final MessageText text;
  @override
  @JsonKey(
      name: 'timestamp', fromJson: timestampFromJSON, toJson: timestampToJSON)
  final DateTime timestamp;

  @override
  String toString() {
    return 'Message(author: $author, text: $text, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(timestamp);

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {@required
          String author,
      @required
      @JsonKey(name: 'text', fromJson: textFromJSON, toJson: textToJSON)
          MessageText text,
      @required
      @JsonKey(name: 'timestamp', fromJson: timestampFromJSON, toJson: timestampToJSON)
          DateTime timestamp}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String get author;
  @override
  @JsonKey(name: 'text', fromJson: textFromJSON, toJson: textToJSON)
  MessageText get text;
  @override
  @JsonKey(
      name: 'timestamp', fromJson: timestampFromJSON, toJson: timestampToJSON)
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith;
}
