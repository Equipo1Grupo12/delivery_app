import 'dart:ui';

import 'package:delivery_app/src/bloc/bloc_logic.dart';
import 'package:delivery_app/src/model/user_model.dart';
import 'package:delivery_app/src/widgets/button_google.dart';
import 'package:delivery_app/src/pages/shops_list_page.dart';
import 'package:delivery_app/src/pages/tab_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  late BlocLogic blocLogic;

  @override
  Widget build(BuildContext context) {
    blocLogic = BlocProvider.of(context);
    return _consultarSesionActual();
  }

  Widget _consultarSesionActual(){
    return StreamBuilder(
      stream: blocLogic.authStatus,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
        blocLogic.getShopsData();
        if(!snapshot.hasData || snapshot.hasError){
          return signInGoogleUI();
        } else {
          return TabBarPage();
        }
      }
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/img/wallpaper_welcomepage.jpg')
                )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX:1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
//Texto 1
              Container(
                margin: EdgeInsets.only(
                    top: 80.0,
                    left: 10.0
                ),
                child: const Text('INGRESA!',style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50.0
                ),
                ),
              ),

//Texto 2
              Container(
                margin: EdgeInsets.only(
                    left: 20.0
                ),
                child: const Text('Ingresa y apoya tu barrio',style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12.0
                ),
                ),
              ),

              Container( // Boton Gmail login
                margin: EdgeInsets.only(
                    top: 100.0, left: 10.0
                ),
                child: ButtonGoogle(
                  text: 'Login with Gmail',
                  onPressed: () {
                    blocLogic.signOut();
                    blocLogic.signIn()
                        .then((user) { // Objeto user de Google al hacer sighIn
                      //print(user.user!.displayName);
                      print('Logueado ${user.user!.displayName}');
                      blocLogic.updateUserData(UserModel(
                          uid: user.user!.uid,
                          email: user.user!.email.toString(),
                          name: user.user!.displayName.toString(),
                          ));
                    });
                  },
                  width: 300.0,
                  height: 50.0
                )
              ),
            ],
          )
        ],
      ),
    );
  }

}
