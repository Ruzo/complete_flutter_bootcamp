import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flash_chat/domain/auth/signed_in_user.dart';
import 'package:flash_chat/domain/core/value_objects.dart';

extension FirebaseAuthXt on firebase.User {
  SignedInUser toDomain() => SignedInUser(
        id: UniqueID.fromUniqueString(
          uid,
        ),
        email: email,
      );
}
