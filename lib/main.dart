import 'package:delivery_app/src/bloc/bloc_logic.dart';
import 'package:delivery_app/src/pages/sign_in_screen.dart';
import 'package:delivery_app/src/routes/routes.dart';
import 'package:delivery_app/src/repository/firebase_test.dart';
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
          //initialRoute: 'welcome', //
          //home: FirebaseTest() //
          home: SignInScreen() // Login con google || Search page
        ),
        bloc: BlocLogic());
  }
}