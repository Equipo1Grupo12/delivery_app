import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/src/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../store_data.dart';

class CloudFirestoreAPI {

  // Nombre de las colecciones
  final String USERS = 'users';
  final String COMPANYES = 'companies';

  // Llama instancias de la base de datos y autenticacion
  FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Casos de uso

    //Actualizar informacion del usuario
  void updateUserData(UserModel user) async{
    DocumentReference ref = _db.collection(USERS).doc(user.uid);
    return await ref.set({
      'uid': user.uid,
      'email': user.email,
      'name': user.name,
      'lastSignIn': DateTime.now()
    }, SetOptions(merge: true));
    // UserModel(this.uid, this.email, this.id, this.name, this.address);
  }

    // Traer informacion de las tiendas
  void getShops() async{
    firestoreDataShops = [];
    CollectionReference ref = _db.collection(COMPANYES);
    QuerySnapshot companies = await ref.get(); //guardar en variable companies la lista que viene de la coleccion
    if(companies.docs.length != 0){
      for(var doc in companies.docs){
        print(doc.data());
        firestoreDataShops.add(doc.data()); // Guarda informacion en variable local
      }
      print("firestoreDataShops: ${firestoreDataShops}");
    }
  }

}