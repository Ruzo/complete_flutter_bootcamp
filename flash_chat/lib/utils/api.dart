import 'package:firebase_auth/firebase_auth.dart';

class API {
  final _auth = FirebaseAuth.instance;

  Future<FirebaseUser> registerUserByEmail(
      String email, String password) async {
    AuthResult results;
    try {
      results = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(results.user.email);
      print(results.additionalUserInfo.toString());
    } catch (e) {
      print('Error: ${e.message}');
    }
    return results?.user ?? null;
  }
}
