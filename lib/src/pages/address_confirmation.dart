import 'dart:ui';

import 'package:delivery_app/src/bloc/bloc_logic.dart';
import 'package:delivery_app/src/store_data.dart';
import 'package:delivery_app/src/widgets/button_google.dart';
import 'package:delivery_app/src/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class AddressConfirmation extends StatefulWidget {

  @override
  _AddressConfirmationState createState() => _AddressConfirmationState();
}

class _AddressConfirmationState extends State<AddressConfirmation> {

  late BlocLogic blocLogic;

  @override
  Widget build(BuildContext context) {

    blocLogic = BlocProvider.of(context);

    final _userAddress = TextEditingController();
    _userAddress.text = currentUser.address;

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container( //TextField Title
                margin: EdgeInsets.only(bottom: 20.0),
                child: TextInput(hintText: 'Dirección', controller: _userAddress),
              ),
              Container( // Boton que subira el objeto Place a Firestore
                child: ButtonGoogle(
                  text: "Confirmar dirección",
                  onPressed:() {
                    blocLogic.updateAddress(_userAddress.text).whenComplete(() {
                      checkAddress = true;
                      print("Direccion actualizada");
                      //print(checkAddress);
                      setState(() {});
                    });
                  },
                  width: 300.0,
                  height: 50.0
                ),
              )
            ]
          )
        ],
      )
    );
  }
}
