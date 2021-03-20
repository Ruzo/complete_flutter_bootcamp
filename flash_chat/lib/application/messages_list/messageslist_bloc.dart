import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/message/i_message_facade.dart';
import 'package:flash_chat/domain/message/message.dart';
import 'package:flash_chat/domain/message/message_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'messageslist_event.dart';
part 'messageslist_state.dart';
part 'messageslist_bloc.freezed.dart';

@injectable
class MessageslistBloc extends Bloc<MessageslistEvent, MessageslistState> {
  final IMessageFacade _iMessageFacade;
  MessageslistBloc(this._iMessageFacade) : super(const MessageslistState.initial());

  @override
  Stream<MessageslistState> mapEventToState(
    MessageslistEvent event,
  ) async* {
    yield* event.map(
      messagesReceived: (e) async* {
        yield e.failureOrMessages.fold(
          (f) => MessageslistState.loadingFailure(f),
          (messages) => MessageslistState.loadingSuccess(messages),
        );
      },
      watchMessages: (e) async* {
        yield const MessageslistState.loadingMessages();
        _iMessageFacade.messageStream().listen((messages) {
          return add(MessageslistEvent.messagesReceived(messages));
        });
      },
    );
  }
}
