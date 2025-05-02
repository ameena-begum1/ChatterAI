import 'package:firebase_auth/firebase_auth.dart';

class ResetService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Login method
  Future<String?> signInWithEmail(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null; // success
    } on FirebaseAuthException catch (e) {
      return e.message; // return error message
    } catch (e) {
      return "An unexpected error occurred.";
    }
  }

  // Password reset method
  Future<String?> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return null; // success
    } on FirebaseAuthException catch (e) {
      return e.message; // return error message
    } catch (e) {
      return "An unexpected error occurred.";
    }
  }
}
