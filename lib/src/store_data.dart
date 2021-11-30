import "package:flutter/material.dart";

final storesData = [
  {'id': '0','name': 'Subway', 'path': 'assets/img/logo1.png', 'address': 'Calle falsa123', 'contact':'47897', 'Btype':'Restaurante','categories':''},
  {'id': '1','name': 'Dunkin Donuts', 'path': 'assets/img/logo2.png', 'address': 'Calle B3 35', 'contact':'123456', 'Btype':'Restaurante','categories':''},
  {'id': '2','name': 'KFC', 'path': 'assets/img/logo3.png', 'address': 'Calle C23', 'contact':'951369', 'Btype':'Restaurante','categories':''},
  {'id': '3','name': 'ara', 'path': 'assets/img/logo1.png', 'address': 'Calle falsa123', 'contact':'47897', 'Btype':'Super Mercado','categories':''},
  {'id': '4','name': 'Tiendas D1', 'path': 'assets/img/D1logo.png', 'address': 'Calle B3 35', 'contact':'123456', 'Btype':'Super Mercado','categories':''},
  {'id': '5','name': 'EL CARNAL', 'path': 'assets/img/logo3.png', 'address': 'Calle C23', 'contact':'951369', 'Btype':'Restaurante','categories':''},
  {'id': '6','name': 'A', 'path': 'assets/img/logo4.png', 'address': 'Calle falsa123', 'contact':'47897', 'Btype':'Panaderia','categories':''},
  {'id': '7','name': 'B', 'path': 'assets/img/logo1.png', 'address': 'Calle B3 35', 'contact':'123456', 'Btype':'Ferreteria','categories':''},
];

var firestoreDataShops = [];

var storeSearchList = List.from(storesData);


