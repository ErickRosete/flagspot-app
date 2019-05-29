import 'package:flutter/material.dart';

import "../../widgets/subcategory/product-list.dart";
import '../../widgets/restaurant/restaurant-list.dart';
import '../../widgets/restaurant/menu.dart';

import '../../models/product.dart';

class SubcategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ProductGroup> productGroups = new List<ProductGroup>();
    productGroupsMap.forEach((name, productGroupMap) {
      List<Product> products = productGroupMap
          .map((productMap) => new Product(
                id: productMap['id'],
                name: productMap['name'],
                time: productMap['time'],
                imgUrl: productMap['imgUrl'],
                stars: productMap['stars'],
              ))
          .toList();
      productGroups.add(ProductGroup(name: name, products: products));
    });

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
                      children: productGroups
                          .map((productGroup) => ProductList(productGroup))
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
