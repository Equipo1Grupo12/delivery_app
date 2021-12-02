import 'package:delivery_app/src/bloc/bloc_logic.dart';
import 'package:delivery_app/src/pages/sign_in_screen.dart';
import 'package:delivery_app/src/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import '../store_data.dart';

class UserDetails extends StatelessWidget {

  late BlocLogic blocLogic;

  @override
  Widget build(BuildContext context) {
    blocLogic = BlocProvider.of(context);
    return Container(
      child: CircleButton(false, Icons.exit_to_app, 20.0, Color.fromARGB(255, 255, 255, 1), () {
        //checkAddress = false;
        blocLogic.signOut();
      })
    );
  }
}
