import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/search_list.dart';
import '../utils/store_data.dart';

class ShopsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShopsPage();
  }
}

class _ShopsPage extends State<ShopsPage> {

  var storeSearchList = List.from(storesData);
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;

  void onChangeSearch(context) {
    storeSearchList = [];
    setState(() {
      storesData.forEach((shop) => {
        val1 = (shop['name'].toString().toLowerCase().indexOf(context.toLowerCase()) >= 0),
        val2 = (shop['Btype'].toString().toLowerCase().indexOf(context.toLowerCase())) >= 0,
        val2 = (shop['categories'].toString().toLowerCase().indexOf(context.toLowerCase())) >= 0,
        if(val1 || val2 || val3){
          storeSearchList.add(shop)
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                //color: Color(0xFF1A9316)
            ),
            margin: EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                Text(
                  "Listado de negocios",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0
                  ),
                ),
                Container(
                    height: 40.0,
                    margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(142, 142, 147, 1.2),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: TextField(
                      keyboardType: TextInputType.text, // Define el tipo de datos que recibe
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top:5.0),
                          prefixIcon: Icon(Icons.search, color: CupertinoColors.inactiveGray),
                          hintText: 'Buscar',
                          border: OutlineInputBorder(borderSide: BorderSide.none)
                      ),
                      onChanged: onChangeSearch,
                    )
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 50.0),
            padding: EdgeInsets.only(top: 100.0),
            child: SearchList(storeSearchList),
          )
        ]
      )
    );
  }
}

