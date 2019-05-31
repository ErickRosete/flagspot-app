import 'package:flutter/material.dart';

import './subcategory-card.dart';
import '../../models/category.dart';

class SubcategoryList extends StatelessWidget {
  final Category category;
  SubcategoryList(this.category);

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.grey[700]);

    return Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15.0, bottom: 5.0),
              child: Text(category.name,
                  textAlign: TextAlign.left, style: titleStyle),
            ),
            SingleChildScrollView(
              child: Row(
                  children: category.subcategories
                      .map((subcategory) => SubcategoryCard(subcategory))
                      .toList()),
              scrollDirection: Axis.horizontal,
            )
          ],
        ));
  }
}
