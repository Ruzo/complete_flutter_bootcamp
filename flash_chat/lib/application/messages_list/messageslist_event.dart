part of 'messageslist_bloc.dart';

@freezed
abstract class MessageslistEvent with _$MessageslistEvent {
  const factory MessageslistEvent.messagesReceived(Either<MessageFailure, List<Message>> failureOrMessages) =
      _MessagesReceived;
  const factory MessageslistEvent.watchMessages() = _WatchMessages;
}
