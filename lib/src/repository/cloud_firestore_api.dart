import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/src/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
      'lastSignIn': DateTime.now(),
    }, SetOptions(merge: true));
    // UserModel(this.uid, this.email, this.id, this.name, this.address);
  }

    //Traer Informacion de usuario
  void getUser() {
    String userUID = _auth.currentUser!.uid;
    Future<Null> ref = _db.collection(USERS).doc(userUID).get().then((DocumentSnapshot doc) async {
      //print(doc.data());
      currentUser.name = await doc.get("name");
      currentUser.email = await doc.get("email");
      currentUser.uid = await doc.get("uid");
      try {
        currentUser.address = await doc.get("address");
      } catch (e) {
        currentUser.address = "";
      }
    });
  }

    //Actualizar dirección
  Future<void> updateAddress(String address) async {
    DocumentReference ref = _db.collection(USERS).doc(currentUser.uid);
    await ref.set({
      'address': address
    }, SetOptions(merge: true));
  }

    // Traer informacion de las tiendas
  void getShops() async{
    firestoreDataShops = [];
    CollectionReference ref = _db.collection(COMPANYES);
    QuerySnapshot companies = await ref.get(); //guardar en variable companies la lista que viene de la coleccion
    if(companies.docs.length != 0){
      for(var doc in companies.docs){
        //print(doc.data());
        firestoreDataShops.add(doc.data()); // Guarda informacion en variable local
      }
      //print("firestoreDataShops: ${firestoreDataShops}");
    }
    storeSearchList = List.from(firestoreDataShops);
  }

}