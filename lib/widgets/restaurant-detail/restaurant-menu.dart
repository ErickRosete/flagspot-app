import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, position) {
        return RestaurantMenuItem();
      },
    );
  }
}

class RestaurantMenuItem extends StatelessWidget {
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
                child: Image.asset("assets/gabo-menu-1.jpg",
                    height: 100.0, width: 100.0, fit: BoxFit.cover),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Pizza Pepperoni"),
                          Expanded(child: Container()),
                          Text("30 - 45 min")
                        ],
                      ),
                      Text(
                          "Detalle del producto, tamaño, ingredientes, calidad y mucho más."),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 25.0,
                          ),
                          Text('4.5 (200+)', style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 1)),
                        child: Text("120",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.red)),
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
