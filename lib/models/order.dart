import 'package:flutter/material.dart';

class Extra {
  final String name;
  final double price;
  bool selected;

  Extra({
    @required this.name,
    @required this.price,
    @required this.selected,
  });
}

//Dummy text
var extrasArray = [
  {'selected': false, 'name': 'Pepperoni', 'price': 10.0},
  {'selected': false, 'name': 'Queso Mozarella', 'price': 10.0},
  {'selected': false, 'name': 'Queso Phildadelphia', 'price': 10.0},
  {'selected': false, 'name': 'Champiñones', 'price': 10.0},
];
