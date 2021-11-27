import 'package:delivery_app/src/bloc/user_bloc.dart';
import 'package:delivery_app/src/pages/car_shop_list.dart';
import 'package:delivery_app/src/pages/register_page.dart';
import 'package:delivery_app/src/pages/shops_list_page.dart';
import 'package:delivery_app/src/pages/user_detail.dart';
import 'package:delivery_app/src/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.indigo)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined, color: Colors.indigo)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigo)
            )
          ]
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => ShopsListPage(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => CarShopList(),
              );
              break;
            case 2:
            return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider(child: UserDetails(), bloc: UserBloc());
                }
              );
              break;
            default:
              return CupertinoTabView();
          }
        },
      ),
    );
  }
}
