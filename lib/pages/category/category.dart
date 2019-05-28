import 'package:flutter/material.dart';

import '../../models/category.dart';

import "../../widgets/restaurant/category-list.dart";
import '../../widgets/restaurant/restaurant-list.dart';
import '../../widgets/restaurant/menu.dart';

class CategoryPage extends StatelessWidget {
  final List<String> categoryNames = ["Pizzas Gabo", "Más Recomendadas"];
  @override
  Widget build(BuildContext context) {
    print(categories);

    return Scaffold(
      appBar: AppBar(
        title: Text("Pizzas"),
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
