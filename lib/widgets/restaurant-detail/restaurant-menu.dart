import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/product.dart';

class RestaurantMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> menu = pizzasGaboMenu
        .map((prod) => Product(
            id: prod['id'],
            imgUrl: prod['imgUrl'],
            name: prod['name'],
            stars: prod['stars'],
            time: prod['time'],
            description: prod['description'],
            price: prod['price']))
        .toList();

    return ListView.builder(
      itemCount: menu.length,
      itemBuilder: (context, position) {
        return RestaurantMenuItem(menu[position]);
      },
    );
  }
}

class RestaurantMenuItem extends StatelessWidget {
  final double fontSize = 16.0;
  final double margin = 6.0;
  final Product product;
  RestaurantMenuItem(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/order');
      },
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: new BorderRadius.circular(8.0),
                child: Image.asset(product.imgUrl,
                    height: 120.0, width: 100.0, fit: BoxFit.cover),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(bottom: margin),
                          child: Row(
                            children: <Widget>[
                              Text(product.name,
                                  style: TextStyle(
                                      fontSize: fontSize,
                                      fontWeight: FontWeight.bold)),
                              Expanded(child: Container()),
                              Text(
                                product.time,
                                style: TextStyle(fontSize: fontSize),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(bottom: margin),
                          child: Text(
                            product.description,
                            style: TextStyle(fontSize: fontSize - 1.0),
                          )),
                      Container(
                          margin: EdgeInsets.only(bottom: margin),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: fontSize + 2.0,
                              ),
                              Text('${product.stars} (200+)',
                                  style: TextStyle(fontSize: fontSize)),
                            ],
                          )),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Colors.red, width: 1)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 2.0),
                        child: Text('\$ ${product.price}',
                            style: TextStyle(
                                fontSize: fontSize, color: Colors.red)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
