import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat/domain/message/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    @required
        String author,
    @JsonKey(
      name: 'text',
      fromJson: textFromJSON,
      toJson: textToJSON,
    )
    @required
        MessageText text,
    @JsonKey(
      name: 'timestamp',
      fromJson: timestampFromJSON,
      toJson: timestampToJSON,
    )
    @required
        DateTime timestamp,
  }) = _Message;

  factory Message.empty() => Message(
        author: '',
        text: MessageText(''),
        timestamp: DateTime.now(),
      );

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

//JSON conversion functions for text
MessageText textFromJSON(String jsonText) => MessageText(jsonText ?? '');
String textToJSON(MessageText message) => message.apiSafeValue();

//JSON conversion functions for timestamp
DateTime timestampFromJSON(Timestamp timestamp) => timestamp.toDate();
Timestamp timestampToJSON(DateTime dateTime) => Timestamp.fromDate(dateTime);
