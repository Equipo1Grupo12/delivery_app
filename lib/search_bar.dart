import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers:<Widget> [

          SliverList(delegate: SliverChildListDelegate(
            [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),

                  child: Column(
                    children: [
                      headerText('Listado de negocios',Colors.black,FontWeight.bold, 30.0),
                      searchInput(context)
                    ],
                  )
              )

            ]
          ))
        ],
      )

    );

  }

  headerText(String texto, Color color, FontWeight fontWeight, fontSize) {
    return Text(
      texto,
      style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize
    ),

    );
  }

}

Widget searchInput (BuildContext context) => Container(
    height: 40.0,
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(20.0)
    ),
    child: const TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top:5.0),
          prefixIcon: Icon(Icons.search, color: CupertinoColors.inactiveGray),
          hintText: 'Buscar',
          border: OutlineInputBorder(borderSide: BorderSide.none)
      ) ,
    ),
  );