import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../ui_elements/time-duration.dart';

class ProductCard extends StatelessWidget {
  final double radius = 20.0;
  final Product product;
  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/order'),
      child: Container(
          width: 250.0,
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(radius),
                child: Image.asset(
                  product.imgUrl,
                  fit: BoxFit.cover,
                  height: 160.0,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 7.5),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 1))),
                child: Row(
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(maxWidth: 120.0),
                      margin: EdgeInsets.only(right: 7.5),
                      child: Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    TimeDuration(product.time),
                    Expanded(child: Container()),
                    Text('${product.stars}', style: TextStyle(fontSize: 18.0)),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 25.0,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
