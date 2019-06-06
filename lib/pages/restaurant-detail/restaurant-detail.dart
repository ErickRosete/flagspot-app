import 'package:flutter/material.dart';
import '../../widgets/ui_elements/rating.dart';
import '../../widgets/ui_elements/custom-button.dart';
import '../../widgets/restaurant-detail/restaurant-menu.dart';
import '../../widgets/restaurant-detail/restaurant-info.dart';
import '../../widgets/restaurant-detail/restaurant-discount.dart';
import '../../widgets/restaurant-detail/restaurant-comments.dart';

class RestaurantDetailPage extends StatefulWidget {
  @override
  _RestaurantDetailState createState() => _RestaurantDetailState();
}

class _RestaurantDetailState extends State<RestaurantDetailPage> {
  String selectedOption = "Menú";
  final List<String> options = [
    "Menú",
    "Información",
    "Comentarios",
    "Promociones"
  ];

  @override
  Widget build(BuildContext context) {
    Widget selectedWidget;
    switch (selectedOption) {
      case 'Menú':
        selectedWidget = RestaurantMenu();
        break;
      case 'Información':
        selectedWidget = RestaurantInfo();
        break;
      case 'Promociones':
        selectedWidget = RestaurantDiscount();
        break;
      case 'Comentarios':
        selectedWidget = RestaurantComments();
        break;
      default:
        selectedWidget = RestaurantMenu();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurantes"),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            "assets/pizzas-gabo-1.jpg",
            fit: BoxFit.cover,
            height: 150.0,
            width: double.infinity,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage("assets/restaurante-3.jpg"),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Pizzas Gabo",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      ),
                      Rating(4),
                    ],
                  ),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ButtonBar(
                        children: options
                            .map((option) => CustomButton(
                                  option,
                                  option == selectedOption,
                                  () {
                                    setState(() {
                                      selectedOption = option;
                                    });
                                  },
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  // Container(height: 100.0, child: selectedWidget),
                  Expanded(child: selectedWidget),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
