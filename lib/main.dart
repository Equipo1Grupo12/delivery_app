import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/src/bloc/user_bloc.dart';
import 'package:delivery_app/src/pages/sign_in_screen.dart';
import 'package:delivery_app/src/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();//inicializa todos lo widgets antes de la inicio de app
  Firebase.initializeApp().then((value){
    runApp(MyApp());
  });//inicializa proyecto de fire base

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: routes,
          //initialRoute: 'welcome',
          //home: homePage()
          home: SignInScreen()
        ),
        bloc: UserBloc());
  }
}

////clase para solicitar estado de la info que va a leerse de firebase
class homePage extends StatefulWidget{
  @override
  _homePageState createState() => _homePageState();
}

//clase que inicia el estado
class _homePageState extends State<homePage> {
  List brand_List = [];

  @override
  void initState(){
    super.initState();
    getUsers();
  }

  void getUsers() async{
    CollectionReference collectionReference = FirebaseFirestore.instance.collection("companies");

    QuerySnapshot companies = await collectionReference.get(); //guardar en variable users la lista que viene de la coleccion

    if(companies.docs.length != 0){
      for(var doc in companies.docs){
        print(doc.data());
        brand_List.add(doc.data());
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