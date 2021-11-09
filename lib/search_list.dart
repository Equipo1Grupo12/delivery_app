import 'package:flutter/material.dart';
import 'store_data.dart';
import 'card_storage.dart';

class SearchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          var tempStore = storesData[index];
          var storePathImg = tempStore['path'].toString();
          var storeName = tempStore['name'].toString();
          var storeAddress = tempStore['address'].toString();
          var storeContact = tempStore['contact'].toString();
          return CardStorage(
              storePathImg, storeName, storeAddress, storeContact);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: storesData.length
    );
  }
}