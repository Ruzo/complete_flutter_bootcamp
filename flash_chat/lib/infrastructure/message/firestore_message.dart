import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/message/i_message_facade.dart';
import 'package:flash_chat/domain/message/message.dart';
import 'package:flash_chat/domain/message/message_failures.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMessageFacade)
class FirestoreMessage implements IMessageFacade {
  final FirebaseFirestore _firestore;

  FirestoreMessage(this._firestore);

  @override
  Stream<Either<MessageFailure, List<Message>>> messageStream() async* {
    print('Into messageStream');
    yield* _firestore
        .collection('messages')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<MessageFailure, List<Message>>(
            snapshot.docs.map(
              (doc) {
                print('doc.data(): ${doc.data()}');
                return Message.fromJson(doc.data());
              },
            ).toList(),
          ),
        )
        .handleError(
      (e) {
        print('messageStream error: ${e.toString()}');
        return left(
          const MessageFailure.unexpected(),
        );
      },
    );
  }

  @override
  Future<Message> send(String text) {
    // TODO: implement send
    throw UnimplementedError();
  }
}
