import 'package:flutter/material.dart';

class Category {
  final String name;
  final List<Subcategory> subcategories;

  Category({
    @required this.name,
    @required this.subcategories,
  });
}

class Subcategory {
  final String id;
  final String name;
  final String imgUrl;

  Subcategory({
    @required this.id,
    @required this.name,
    @required this.imgUrl,
  });
}

//Dummy text
var categoriesMap = {
  'Comida Rápida': [
    {'id': 'pizzas', 'name': 'Pizzas', 'imgUrl': 'assets/comida-rapida-1.jpg'},
    {'id': 'h', 'name': 'Hamburguesas', 'imgUrl': 'assets/comida-rapida-2.jpg'},
  ],
  'Asiatica': [
    {'id': 'sushi', 'name': 'Sushi', 'imgUrl': 'assets/asiatica-1.jpg'},
    {'id': 'ramen', 'name': 'Ramen', 'imgUrl': 'assets/asiatica-2.jpg'},
  ],
  'Mexicana': [
    {'id': 'pozole', 'name': 'Pozole', 'imgUrl': 'assets/mexicana-1.png'},
    {'id': 'chre', 'name': 'Chile Relleno', 'imgUrl': 'assets/mexicana-2.jpg'},
  ],
};
