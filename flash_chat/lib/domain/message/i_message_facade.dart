import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/message/message.dart';
import 'package:flash_chat/domain/message/message_failures.dart';

abstract class IMessageFacade {
  Stream<Either<MessageFailure, List<Message>>> messageStream();
  Future<Either<MessageFailure, Unit>> send(Message message);
}
