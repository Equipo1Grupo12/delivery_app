import 'package:delivery_app/src/model/user_model.dart';
import 'package:delivery_app/src/repository/auth_repository.dart';
import 'package:delivery_app/src/repository/cloud_firestore_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class BlocLogic implements Bloc {

  final _auth_repository = AuthRepository();

  //Streams - "User" firebase
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase; // Consulta estado de la sesion

  //Casos de uso

  // Login
  Future<UserCredential> signIn() => _auth_repository.signInFirebase();

  // SignOut
  signOut() {_auth_repository.signOut();}

  // Registrar usuario en base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(UserModel user) => _cloudFirestoreRepository.updateUserDataFirestore(user);

  // Traer informacion del las tiendas de la base de datos
  void getShopsData() => _cloudFirestoreRepository.getShopsDataFirestore();

  @override
  void dispose() {
    return null;
  }
}