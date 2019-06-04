import 'package:flutter/material.dart';
import '../../models/restaurant.dart';

class RestaurantButton extends StatelessWidget {
  final Restaurant restaurant;
  final double size;
  RestaurantButton(this.restaurant, [this.size = 90.0]);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      margin: EdgeInsets.only(top: 1.0, right: 50.0, bottom: 10.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            offset: Offset(1.0, 2.0),
          )
        ],
      ),
      child: ClipOval(
        child: Material(
          elevation: 2.0,
          child: Ink.image(
            image: AssetImage(restaurant.imgUrl),
            fit: BoxFit.cover,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/detail');
              },
              child: null,
            ),
          ),
        ),
      ),
    );
  }
}
