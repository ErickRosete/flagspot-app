import 'package:flutter/material.dart';

import "../../widgets/restaurant/subcategory-list.dart";
import '../../widgets/restaurant/restaurant-list.dart';
import '../../widgets/restaurant/menu.dart';
import '../../models/category.dart';
import '../../models/restaurant.dart';

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Category> categories = new List<Category>();
    categoriesMap.forEach((name, subcategoriesMap) {
      List<Subcategory> subcategories = subcategoriesMap
          .map((subcategoryMap) => new Subcategory(
              id: subcategoryMap['id'],
              name: subcategoryMap['name'],
              imgUrl: subcategoryMap['imgUrl']))
          .toList();
      categories.add(Category(name: name, subcategories: subcategories));
    });

    List<Restaurant> restaurants = restaurantArray
        .map((restaurant) => Restaurant(
            id: restaurant['id'],
            category: restaurant['category'],
            imgUrl: restaurant['imgUrl']))
        .toList();

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
                      children: categories
                          .map((category) => SubcategoryList(category))
                          .toList()),
                  RestaurantList(restaurants)
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
