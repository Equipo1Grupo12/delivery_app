import 'package:delivery_app/src/pages/shop_detail_page.dart';
import 'package:flutter/material.dart';


class FloatingActionButtonShop extends StatefulWidget {

  var _index;

  FloatingActionButtonShop(this._index);


  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonShop(_index);
  }
}

class _FloatingActionButtonShop extends State<FloatingActionButtonShop> {
  var _index;

  _FloatingActionButtonShop(this._index);

  void onPressed(){
    if (_index == null) {
      this._index = 0;
    } else {
      this._index = _index;
    }
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShopDetailPage(_index)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //backgroundColor: Color(0xFF11DA53),
      child: Icon(Icons.store),
      onPressed: onPressed,
    );
  }
}
