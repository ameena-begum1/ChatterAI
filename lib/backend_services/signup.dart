import 'package:firebase_auth/firebase_auth.dart';

class SignUpAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> signUpWithEmail({ //userdefined 
    required String email,
    required String password,   
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword( //predefined 
        email: email,
        password: password,
      );
      return null; //success
    } on FirebaseAuthException catch (e) {
      return e.message;
    } catch (e) {
      return "An unknown error occurred.";
    }
  }
}
