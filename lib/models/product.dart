import 'package:flutter/material.dart';

class ProductGroup {
  final String name;
  final List<Product> products;

  ProductGroup({
    @required this.name,
    @required this.products,
  });
}

var productGroupsMap = {
  'Pizzas Gabo': [
    {
      'id': 'pg-1',
      'name': 'Pepperoni',
      'time': '30-45 min',
      'imgUrl': 'assets/pizzas-gabo-1.jpg',
      'stars': 4.0
    },
    {
      'id': 'pg-2',
      'name': 'Margarita',
      'time': '30-45 min',
      'imgUrl': 'assets/pizzas-gabo-2.jpg',
      'stars': 4.0
    },
  ],
  'Más Recomendadas': [
    {
      'id': 'mr-1',
      'name': 'Carnivora',
      'time': '30-45 min',
      'imgUrl': 'assets/recomendadas-1.jpg',
      'stars': 5.0
    },
    {
      'id': 'mr-2',
      'name': 'Pepperoni',
      'time': '30-45 min',
      'imgUrl': 'assets/recomendadas-2.jpg',
      'stars': 5.0
    },
  ],
  'Cercanas': [
    {
      'id': 'c-1',
      'name': 'Pepperoni - A la leña',
      'time': '30-45 min',
      'imgUrl': 'assets/cercanas-1.jpg',
      'stars': 3.0
    },
    {
      'id': 'c-2',
      'name': 'Carnivora - Pizza Hut',
      'time': '30-45 min',
      'imgUrl': 'assets/cercanas-2.jpg',
      'stars': 4.0
    },
  ],
};

class Product {
  final String id;
  final String name;
  final String time;
  final String imgUrl;
  final double stars;
  final String description;
  final double price;

  Product(
      {@required this.id,
      @required this.name,
      @required this.time,
      @required this.imgUrl,
      @required this.stars,
      this.description,
      this.price});
}

var pizzasGaboMenu = [
  {
    'id': 'pgm-1',
    'name': 'Pizza Pepperoni',
    'description':
        "Detalle del producto, tamaño, ingredientes, calidad y mucho más.",
    'time': '30 - 45 min',
    'imgUrl': 'assets/gabo-menu-1.jpg',
    'stars': 4.5,
    'price': 120.0
  },
  {
    'id': 'pgm-2',
    'name': 'Pizza Valeria',
    'description':
        "Detalle del producto, tamaño, ingredientes, calidad y mucho más.",
    'time': '30 - 45 min',
    'imgUrl': 'assets/gabo-menu-2.jpg',
    'stars': 4.0,
    'price': 230.0
  },
  {
    'id': 'pgm-3',
    'name': 'Pizza Margarita',
    'description':
        "Detalle del producto, tamaño, ingredientes, calidad y mucho más.",
    'time': '30 - 45 min',
    'imgUrl': 'assets/gabo-menu-3.jpg',
    'stars': 4.0,
    'price': 150.0
  },
  {
    'id': 'pgm-4',
    'name': 'Pizza Carnivora',
    'description':
        "Detalle del producto, tamaño, ingredientes, calidad y mucho más.",
    'time': '30 - 45 min',
    'imgUrl': 'assets/gabo-menu-4.jpg',
    'stars': 5.0,
    'price': 150.0
  },
];
