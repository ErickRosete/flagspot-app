import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String id;
  final String imgUrl;
  MenuButton(this.id, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.5),
      child: FloatingActionButton(
        heroTag: id,
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.white,
        onPressed: () => {},
      ),
    );
  }
}
