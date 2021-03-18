part of 'messageslist_bloc.dart';

@freezed
abstract class MessageslistState with _$MessageslistState {
  const factory MessageslistState.initial() = _Initial;
  const factory MessageslistState.loadingMessages() = _LoadingMessages;
  const factory MessageslistState.loadingSuccess(List<Message> messages) = _LoadingSuccess;
  const factory MessageslistState.loadingFailure(MessageFailure failure) = _LoadingFailure;
}
