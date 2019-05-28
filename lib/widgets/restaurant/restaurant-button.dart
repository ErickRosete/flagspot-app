import 'package:flutter/material.dart';

class RestaurantButton extends StatelessWidget {
  final String id;
  final String imgUrl;
  RestaurantButton(this.id, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 50.0, bottom: 10.0),
      height: 75.0,
      width: 75.0,
      child: FittedBox(
        child: FloatingActionButton(
          heroTag: id,
          child: Icon(Icons.camera_alt),
          backgroundColor: Colors.white,
          onPressed: () => {},
        ),
      ),
    );
  }
}
