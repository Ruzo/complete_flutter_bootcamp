import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/message/i_message_facade.dart';
import 'package:flash_chat/domain/message/message.dart';
import 'package:flash_chat/domain/message/message_failures.dart';
import 'package:flash_chat/domain/message/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

@injectable
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final IMessageFacade _iMessageFacade;
  MessageBloc(this._iMessageFacade) : super(MessageState.initial());

  @override
  Stream<MessageState> mapEventToState(
    MessageEvent event,
  ) async* {
    yield* event.map(
      sent: (e) async* {
        if (state.text.isValid) {
          final Message newMessage = Message(author: e.author, text: state.text, timestamp: DateTime.now());

          yield state.copyWith(
            showErrorMessage: false,
            isSending: true,
            text: MessageText(''),
          );

          final Either<MessageFailure, Unit> messageSentOrNot = await _iMessageFacade.send(newMessage);

          yield state.copyWith(isSending: false);

          messageSentOrNot.fold(
            (f) async* {
              yield state.copyWith(failure: f);
            },
            (_) async* {
              yield state.copyWith(text: MessageText(''));
            },
          );
        } else {
          yield state.copyWith(showErrorMessage: true);
        }
      },
      textChanged: (e) async* {
        yield state.copyWith(
          text: MessageText(e.text),
          showErrorMessage: false,
        );
      },
    );
  }
}
