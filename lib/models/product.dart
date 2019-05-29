import 'package:flutter/material.dart';

class ProductGroup {
  final String name;
  final List<Product> products;

  ProductGroup({
    @required this.name,
    @required this.products,
  });
}

class Product {
  final String id;
  final String name;
  final String time;
  final String imgUrl;
  final int stars;

  Product(
      {@required this.id,
      @required this.name,
      @required this.time,
      @required this.imgUrl,
      @required this.stars});
}

//Dummy text
var productGroupsMap = {
  'Pizzas Gabo': [
    {
      'id': 'pg-1',
      'name': 'Pepperoni',
      'time': '30-45 min',
      'imgUrl': 'assets/pizzas-gabo-1.jpg',
      'stars': 4
    },
    {
      'id': 'pg-2',
      'name': 'Margarita',
      'time': '30-45 min',
      'imgUrl': 'assets/pizzas-gabo-2.jpg',
      'stars': 4
    },
  ],
  'Más Recomendadas': [
    {
      'id': 'mr-1',
      'name': 'Carnivora',
      'time': '30-45 min',
      'imgUrl': 'assets/recomendadas-1.jpg',
      'stars': 5
    },
    {
      'id': 'mr-2',
      'name': 'Pepperoni',
      'time': '30-45 min',
      'imgUrl': 'assets/recomendadas-2.jpg',
      'stars': 5
    },
  ],
  'Cercanas': [
    {
      'id': 'c-1',
      'name': 'Pepperoni - A la leña',
      'time': '30-45 min',
      'imgUrl': 'assets/cercanas-1.jpg',
      'stars': 3
    },
    {
      'id': 'c-2',
      'name': 'Carnivora - Pizza Hut',
      'time': '30-45 min',
      'imgUrl': 'assets/cercanas-2.jpg',
      'stars': 4
    },
  ],
};
