import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


////clase para solicitar estado de la info que va a leerse de firebase
class FirebaseTest extends StatefulWidget{
  @override
  _FirebaseTest createState() => _FirebaseTest();
}

//clase que inicia el estado
class _FirebaseTest extends State<FirebaseTest> {
  List brand_List = [];

  @override
  void initState(){
    super.initState();
    getUsers();
  }

  void getUsers() async{
    CollectionReference collectionReference = FirebaseFirestore.instance.collection("companies");

    QuerySnapshot companies = await collectionReference.get(); //guardar en variable companies la lista que viene de la coleccion

    if(companies.docs.length != 0){
      for(var doc in companies.docs){
        print(doc.data());
        brand_List.add(doc.data()); // Guarda informacion en variable local
        print(brand_List);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}