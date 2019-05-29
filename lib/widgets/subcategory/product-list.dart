import 'package:flutter/material.dart';

import './product-card.dart';
import '../../models/product.dart';

class ProductList extends StatelessWidget {
  final ProductGroup productGroup;
  ProductList(this.productGroup);

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 26.0, color: Colors.grey[700]);

    return Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15.0, bottom: 5.0),
              child: Text(productGroup.name,
                  textAlign: TextAlign.left, style: titleStyle),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: productGroup.products
                    .map((product) => ProductCard(product))
                    .toList(),
              ),
            ),
          ],
        ));
  }
}
