import 'package:delivery_app/src/bloc/user_bloc.dart';
import 'package:delivery_app/src/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class UserDetails extends StatelessWidget {

  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Container(
      child: CircleButton(false, Icons.exit_to_app, 20.0, Color.fromARGB(255, 255, 255, 1), () => userBloc.signOut()),
    );
  }
}
