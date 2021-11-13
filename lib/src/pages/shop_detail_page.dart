import 'package:delivery_app/src/utils/store_data.dart';
import 'package:flutter/material.dart';

class ShopDetailPage extends StatelessWidget {

  var index;
  ShopDetailPage(this.index);

  @override
  Widget build(BuildContext context) {
    var temp = storeSearchList[int.parse(index)];
    return Container(
      color: Colors.green,
      child: Text('$index'+'$temp')
    );
  }
}