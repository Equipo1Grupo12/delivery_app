import 'dart:ui';
import 'package:delivery_app/src/routes/routes.dart';
import 'package:delivery_app/src/pages/shops_list_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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

              emailInput(),
              passwordInput(),

              Container(
                margin: EdgeInsets.only(
                    top: 100.0, left: 10.0
                ),
                width: 150.0,
                height: 45.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'shops');
                  },

                  style: ElevatedButton.styleFrom(primary: Colors.green ,shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)
                  ),
                  ),

                  child: const Text('Ingresar'),
                ),

              ),
              Container(
                margin: EdgeInsets.only(
                    top: 10.0, left: 10.0
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  },
                  child: const Text('¿Crear cuenta?',
                    style: TextStyle(
                        color: Colors.lightGreen, fontWeight: FontWeight.bold, fontSize: 13.0
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget emailInput(){
  return Container(
    margin: EdgeInsets.only(top: 80.0),
    padding: EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius:BorderRadius.circular(25.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),

  );
}
Widget idInput(){
  return Container(
    margin: EdgeInsets.only(top: 80.0),
    padding: EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius:BorderRadius.circular(25.0)
    ),
    child: TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),

  );
}

Widget nameInput(){
  return Container(
    margin: EdgeInsets.only(top: 80.0),
    padding: EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius:BorderRadius.circular(25.0)
    ),
    child: TextField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),

  );
}

Widget phoneInput(){
  return Container(
    margin: EdgeInsets.only(top: 80.0),
    padding: EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius:BorderRadius.circular(25.0)
    ),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),

  );
}

Widget passwordInput(){
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius:BorderRadius.circular(25.0)
    ),
    child: TextField(
      obscureText: false,
      //keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),

  );
}