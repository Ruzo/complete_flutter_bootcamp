import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/core/value_failures.dart';
import 'package:flash_chat/domain/message/i_message_facade.dart';
import 'package:flash_chat/domain/message/message.dart';
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
      sent: (e) async* {},
      textChanged: (e) async* {},
    );
  }
}
