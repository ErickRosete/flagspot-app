import 'package:flutter/material.dart';

import './item-card.dart';

class ItemList extends StatelessWidget {
  final String title;
  ItemList(this.title);

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 26.0, color: Colors.grey[700]);

    var _imageArray = new List<Widget>();
    for (int i = 0; i < 5; i++) {
      _imageArray.add(ItemCard("Ejemplo ${i + 1}"));
    }

    return Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15.0, bottom: 5.0),
              child: Text(title, textAlign: TextAlign.left, style: titleStyle),
            ),
            SingleChildScrollView(
              child: Row(children: _imageArray),
              scrollDirection: Axis.horizontal,
            )
          ],
        ));
  }
}
