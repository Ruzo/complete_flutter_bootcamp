part of 'message_bloc.dart';

@freezed
abstract class MessageState with _$MessageState {
  const factory MessageState({
    @required Message message,
    @required bool showErrorMessage,
    @required bool isEditing,
    @required bool isSending,
  }) = _MessageState;

  factory MessageState.initial() => MessageState(
        message: Message.empty(),
        showErrorMessage: false,
        isEditing: false,
        isSending: false,
      );
}
