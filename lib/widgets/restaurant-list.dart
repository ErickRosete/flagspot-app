import 'package:flutter/material.dart';

import './restaurant-card.dart';

class RestaurantList extends StatelessWidget {
  final String title;
  RestaurantList(this.title);

  @override
  Widget build(BuildContext context) {
    var _imageArray = new List<Widget>();
    for (int i = 0; i < 5; i++) {
      _imageArray.add(RestaurantCard("Ejemplo ${i + 1}"));
    }

    return Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15.0, bottom: 5.0),
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Row(children: _imageArray),
              scrollDirection: Axis.horizontal,
            )
          ],
        ));
  }
}
