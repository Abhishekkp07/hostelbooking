import 'package:firebase_auth/firebase_auth.dart';

class FirebaseHelper {
  final FirebaseAuth auth = FirebaseAuth.instance;

  //user sign up
  Future<String?> registerUser(
      {required String email, required String pwd}) async {
    try {
      auth.createUserWithEmailAndPassword(
        email: email,
        password: pwd,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    } catch (e) {
      print(e);
    }
  }
}
