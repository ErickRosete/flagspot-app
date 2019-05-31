import 'package:flutter/material.dart';
import 'restaurant-button.dart';

class RestaurantList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.grey[700]);

    List<Widget> restaurantOptions = new List<Widget>();
    for (var i = 0; i <= 4; i++) {
      restaurantOptions.add(RestaurantButton('restaurant-$i', "restaurant-$i"));
    }

    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 15.0, bottom: 10.0, right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              "Restaurantes",
              style: titleStyle,
            ),
            margin: EdgeInsets.only(bottom: 10.0),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: restaurantOptions),
          ),
        ],
      ),
    );
  }
}
