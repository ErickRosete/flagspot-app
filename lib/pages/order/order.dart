import 'package:flagspot/widgets/order/checkbox-extras.dart';
import 'package:flutter/material.dart';
import '../../widgets/ui_elements/rating.dart';
import '../../models/order.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<Extra> checkboxOptions = extrasArray
      .map((extraMap) => Extra(
          name: extraMap['name'],
          selected: extraMap['selected'],
          price: extraMap['price']))
      .toList();

  changeCheckbox() {}

  @override
  Widget build(BuildContext context) {
    var descStyle = TextStyle(fontSize: 20.0);
    // var redStyle = TextStyle(fontSize: 20.0, color: Colors.red);
    // var greyStyle = TextStyle(fontSize: 20.0, color: Colors.grey[700]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 225.0,
              width: double.infinity,
              child: Image.asset(
                "assets/pizzas-gabo-1.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              transform: Matrix4.translationValues(0.0, -25.0, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage("assets/restaurante-3.jpg"),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.5),
                    child: Text(
                      "Pizza Gabo",
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 0.0, bottom: 20.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            child: Text("Pepperoni",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            color: Colors.grey[350],
                            padding: EdgeInsets.all(2.5),
                            child: Text("30 - 45 min"),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "\$120",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          Rating(4),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Detalle del producto, tamaño, ingredientes, calidad, y mucho más',
                    style: descStyle,
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    "Ingredientes Extras",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  SizedBox(height: 10.0),
                  Column(
                      children: checkboxOptions
                          .map((option) => CheckboxExtras(option, (bool val) {
                                setState(() {
                                  option.selected = val;
                                });
                              }))
                          .toList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
