import 'package:flutter/material.dart';

class Restaurant {
  final String id;
  final String imgUrl;
  final String category;

  Restaurant(
      {@required this.id, @required this.imgUrl, @required this.category});
}

//Dummy text
var restaurantArray = [
  {'id': 'de-volada', 'imgUrl': 'assets/restaurante-1.jpg', 'category': 'cafe'},
  {'id': 'pekin', 'imgUrl': 'assets/restaurante-2.jpg', 'category': 'china'},
  {'id': 'pizzas-gabo', 'imgUrl': 'assets/restaurante-3.jpg', 'category': 'pizzas'},
  {'id': 'dominos', 'imgUrl': 'assets/restaurante-4.png', 'category': 'pizzas'},
  {'id': 'pizzonona', 'imgUrl': 'assets/restaurante-5.jpg', 'category': 'pizzas'},
];
