import 'package:delivery_app/src/pages/login_page.dart';
import 'package:delivery_app/src/pages/register_page.dart';
import 'package:delivery_app/src/pages/shops_page.dart';
import 'package:delivery_app/src/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final routes = <String,WidgetBuilder> {
  'welcome': (BuildContext context)=> WelcomePage(),
  'shops': (BuildContext context)=> ShopsPage(),
  'login': (BuildContext context)=> LoginPage(),
  'register': (BuildContext context)=> RegisterPage()
};