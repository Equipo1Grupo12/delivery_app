import 'dart:ui';
import 'package:delivery_app/src/routes/routes.dart';
import 'package:delivery_app/src/pages/shops_page.dart';
import 'package:delivery_app/src/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        Container( // background
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/wall.jpg')
            )
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX:1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Center( child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//Texto 1
            Container(
              margin: EdgeInsets.only(top: 90.0),
              child: const Text('COMUNIDAPP',style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50.0
              ),
              ),
            ),
//Texto 2
            Container(
              margin: EdgeInsets.only(

              ),
              child: const Text('El comercio de tu barrio, al alcance de tu mano',style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12.0
              ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 60.0),
              width: 150.0,
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                  //Navigator.push(
                     // context,
                     // new MaterialPageRoute(
                       //   builder: (context) => new ShopsPage()));
                },

                style: ElevatedButton.styleFrom(primary: Colors.green ,shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0)
                ),
                ),

                child: const Text('Ingresar'),
              ),

            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: TextButton(
                onPressed: () {},
                child: const Text('Crea tu cuenta aquí',
                      style: TextStyle(
                color: Colors.lightGreen, fontWeight: FontWeight.bold, fontSize: 13.0
              ),
              ),
              ),
            )
          ],
        ))
      ],
      ),
    );
  }
}

