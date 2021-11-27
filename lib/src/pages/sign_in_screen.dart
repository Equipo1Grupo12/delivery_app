import 'dart:ui';

import 'package:delivery_app/src/bloc/user_bloc.dart';
import 'package:delivery_app/src/pages/button_google.dart';
import 'package:delivery_app/src/pages/shops_list_page.dart';
import 'package:delivery_app/src/pages/tab_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _consultarSesionActual();
  }

  Widget _consultarSesionActual(){
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
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
                    userBloc.signOut();
                    userBloc.signIn()
                        .then((user) { // Objeto user de Google al hacer sighIn
                      //print(user.user!.displayName);
                      print('Logueado ${user.user!.displayName}');
                      /*userBloc.updateUserData(UserModel(
                          uid: user.user!.uid,
                          name: user.user!.displayName.toString(),
                          email: user.user!.email.toString(),
                      ));*/
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
