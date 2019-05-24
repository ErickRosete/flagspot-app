import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final double radius = 20.0;
  final String title;
  RestaurantCard(this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/detail'),
      child: Container(
        height: 230.0,
        width: 320.0,
        margin: EdgeInsets.all(10.0),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: Image.asset(
                'assets/food.jpg',
                fit: BoxFit.fitHeight,
                height: double.infinity,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 24.0, bottom: 12.0, right: 24.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black87,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
