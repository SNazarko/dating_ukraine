import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository{
AuthRepository._();
static final AuthRepository instance = AuthRepository._();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> singInWightEmailAndPassword(
    String email,
    String password,
  ) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
  Future<void> createUserWightEmailAndPassword(
      String email,
      String password,
      ) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

}
