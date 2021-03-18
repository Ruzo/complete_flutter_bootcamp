// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$_$_MessageFromJson(Map<String, dynamic> json) {
  return _$_Message(
    author: json['author'] as String,
    text: textFromJSON(json['text'] as String),
    timestamp: timestampFromJSON(json['timestamp'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'author': instance.author,
      'text': textToJSON(instance.text),
      'timestamp': timestampToJSON(instance.timestamp),
    };
