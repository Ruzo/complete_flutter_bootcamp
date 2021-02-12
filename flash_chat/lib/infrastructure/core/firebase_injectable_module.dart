import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(
        scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly'],
        hostedDomain: "",
        clientId: "",
      );
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
