import 'package:flutter/material.dart';
import '../../widgets/ui_elements/rating.dart';

class RestaurantDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Restaurantes"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/food.jpg",
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 7.5),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage("assets/pizzasGaboIcon.jpg"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Pizzas Gabo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                    Rating(4),
                  ],
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ButtonBar(
                    children: <Widget>[
                      OutlineButton(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.red),
                        child: Text('Menu'),
                        onPressed: () => {},
                      ),
                      OutlineButton(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.red),
                        child: Text('Información'),
                        onPressed: () => {},
                      ),
                      OutlineButton(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.red),
                        child: Text('Comentarios'),
                        onPressed: () => {},
                      ),
                      OutlineButton(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.red),
                        child: Text('Ubicación'),
                        onPressed: () => {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
