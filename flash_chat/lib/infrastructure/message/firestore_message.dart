import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/message/i_message_facade.dart';
import 'package:flash_chat/domain/message/message.dart';
import 'package:flash_chat/domain/message/message_failures.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMessageFacade)
class FirestoreMessage implements IMessageFacade {
  final FirebaseFirestore _firestore;

  FirestoreMessage(this._firestore);

  @override
  Stream<Either<MessageFailure, List<Message>>> messageStream() async* {
    yield* _firestore
        .collection('messages')
        .orderBy('timestamp')
        .snapshots()
        .map(
          (snapshot) => right<MessageFailure, List<Message>>(
            snapshot.docs.map(
              (doc) {
                // print('doc.data(): ${doc.data()}');
                return Message.fromJson(doc.data());
              },
            ).toList(),
          ),
        )
        .handleError(
      (e) {
        return left(
          MessageFailure.unexpectedError(e.toString()),
        );
      },
    );
  }

  @override
  Future<Either<MessageFailure, Unit>> send(Message message) async {
    // print('Trying to send...');

    try {
      final messageSentOrNot = await _firestore.collection('messages').add(message.toJson());
      if (messageSentOrNot?.id != null) {
        // print('Sent successfully');
        return right(unit);
      } else {
        return left(const MessageFailure.unexpectedError('Unknown error'));
      }
    } on PlatformException catch (e) {
      return left(MessageFailure.unexpectedError(e.message));
    }
  }
}
