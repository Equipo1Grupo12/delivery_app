
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../search_bar.dart';
import '../../search_list.dart';

class ShopsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF1A9316)
                    ),
                    margin: EdgeInsets.only(top: 30.0),
                    child: SearchBar(),

                  ),

                  Container(
                    margin: EdgeInsets.only(top: 50.0),
                    padding: EdgeInsets.only(top: 100.0),
                    child: SearchList(),
                  )

                ]
            )
    );
  }
}

