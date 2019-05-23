import 'package:flutter/material.dart';

import "../../widgets/restaurant-list.dart";

class RestaurantPage extends StatelessWidget {
  final List<String> restaurantNames = [
    "Comida Rápida",
    "Asiatica",
    "Mexicana"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurantes"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Column(
              children:
                  restaurantNames.map((name) => RestaurantList(name)).toList()),
        ),
      ),
    );
  }
}
