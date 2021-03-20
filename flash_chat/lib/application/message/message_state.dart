part of 'message_bloc.dart';

@freezed
abstract class MessageState with _$MessageState {
  const factory MessageState({
    @required MessageText text,
    @required bool showErrorMessage,
    @required bool isSending,
    @required MessageFailure failure,
  }) = _MessageState;

  factory MessageState.initial() => MessageState(
        text: MessageText(''),
        showErrorMessage: false,
        isSending: false,
        failure: const MessageFailure.none(),
      );
}
