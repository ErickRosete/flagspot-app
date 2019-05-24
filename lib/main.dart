import 'package:flutter/material.dart';

import "./pages/restaurant/restaurant.dart";
import "./pages/restaurant-detail/restaurant-detail.dart";
import "./pages/order/order.dart";

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
        '/detail': (context) => RestaurantDetailPage(),
        '/order': (context) => OrderPage()
      },
    );
  }
}
