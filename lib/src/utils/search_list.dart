import 'package:flutter/material.dart';
import 'card_storage.dart';

class SearchList extends StatelessWidget {

  var searchList = [];

  SearchList(this.searchList);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          var tempStore = searchList[index];
          var storeid =  tempStore['id'].toString();
          var storePathImg = tempStore['path'].toString();
          var storeName = tempStore['name'].toString();
          var storeAddress = tempStore['address'].toString();
          var storeContact = tempStore['contact'].toString();
          return CardStorage(storeid,storePathImg, storeName, storeAddress, storeContact);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: searchList.length
    );
  }
}