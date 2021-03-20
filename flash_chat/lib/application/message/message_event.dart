part of 'message_bloc.dart';

@freezed
abstract class MessageEvent with _$MessageEvent {
  const factory MessageEvent.sent({
    // @required MessageText text,
    @required String author,
  }) = _Sent;
  const factory MessageEvent.textChanged(String text) = _TextChanged;
}
