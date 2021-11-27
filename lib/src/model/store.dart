import 'dart:ffi';
import 'dart:html';

import 'package:flutter/material.dart';

class Store{
  String id;
  String name;
  String imgPath;
  String address;
  String contact;
  String btype;
  String categories;

  Store(this.id, this.name, this.imgPath, this.address, this.contact, this.btype, this.categories);
}
//{'id': '0','name': 'Subway', 'path': 'assets/img/logo1.png', 'address': 'Calle falsa123', 'contact':'47897', 'Btype':'Restaurante','categories':''},