import 'package:flutter/material.dart';

import "../../widgets/restaurant/category-list.dart";
import '../../widgets/restaurant/restaurant-list.dart';
import '../../widgets/restaurant/menu.dart';

class RestaurantPage extends StatelessWidget {
  final List<String> categoryNames = ["Comida Rápida", "Asiatica", "Mexicana"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurantes"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 80.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Column(
                      children: categoryNames
                          .map((name) => CategoryList(name))
                          .toList()),
                  RestaurantList()
                ],
              ),
            ),
          ),
          Menu()
        ],
      ),
    );
  }
}
