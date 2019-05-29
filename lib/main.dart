import 'package:flutter/material.dart';

import "./pages/restaurant/restaurant.dart";
import "./pages/restaurant-detail/restaurant-detail.dart";
import "./pages/order/order.dart";
import './pages/subcategory/subcategory.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flagspot',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RestaurantPage(),
        '/subcategory': (context) => SubcategoryPage(),
        '/detail': (context) => RestaurantDetailPage(),
        '/order': (context) => OrderPage()
      },
    );
  }
}
