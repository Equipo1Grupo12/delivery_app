import 'package:delivery_app/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'search_list.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
        initialRoute: 'welcome',

    );
  }
}