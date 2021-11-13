import 'package:flutter/material.dart';

import 'floating_action_button_shop.dart';


class CardStorage extends StatelessWidget {

  String pathImage;
  String name;
  String address;
  String contact;
  String index;

  CardStorage(this.index, this.pathImage, this.name, this.address, this.contact);

  @override
  Widget build(BuildContext context) {

    final storeName = Container(
        margin: EdgeInsets.only(
            bottom: 5.0
        ),
        child: Text(
          name,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold
          ),
        )
    );

    final storeAddress = Container(
        margin: EdgeInsets.only(
            //left: 10.0
        ),
        child: Text(
          address,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 17.0
          ),
        )
    );

    final storeContact = Container(
        margin: EdgeInsets.only(
            //left: 10.0
        ),
        child: Text(
          contact,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 17.0
          ),
        )
    );

    final storeDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        storeName,
        storeAddress,
        storeContact
      ]
    );

    final photo = Container (
      margin: EdgeInsets.all(10),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(pathImage)
        )
      ),
    );

    //print(index);
    return Stack(
      alignment: Alignment(0.8, 0),
      children: <Widget>[
        Container(
          //color: Color(0x70A3A3A3),
          child: Row (
            children: <Widget>[
            photo,
            storeDetails,
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //color: Color(0x1734FF07),
            border: Border.all(color: Colors.black),
          ),
        ),
        FloatingActionButtonShop(index)
      ],
    );


  }

}