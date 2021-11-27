import 'package:delivery_app/src/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class UserBloc implements Bloc {

  final _auth_repository = AuthRepository();

  //Streams - "User" firebase
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase; // Consulta estado de la sesion

  //Casos de uso

  // Login
  Future<UserCredential> signIn() => _auth_repository.signInFirebase();
  // SignOut
  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {
    return null;
  }
}