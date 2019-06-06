import 'package:flutter/material.dart';
import './restaurant-map.dart';

class RestaurantInfo extends StatelessWidget {
  final TextStyle descStyle = TextStyle(fontSize: 18.0);
  final TextStyle subtitleStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0);
  final TextStyle redStyle = TextStyle(fontSize: 18.0, color: Colors.red);
  final TextStyle greyStyle =
      TextStyle(fontSize: 18.0, color: Colors.grey[700]);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
            '"Pizzas Gabo" nace de la necesidad de ofrecer un concepto en pizzeria con ingredientes frescos y combinaciones creativas',
            style: descStyle,
          ),
          SizedBox(height: 30.0),
          Row(
            children: <Widget>[
              Text("Contacto", style: redStyle),
              SizedBox(width: 7.5),
              Text("686 316 3947", style: greyStyle)
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            children: <Widget>[
              Text("Rango de Precio", style: redStyle),
              SizedBox(width: 7.5),
              Text("\$\$", style: greyStyle)
            ],
          ),
          SizedBox(height: 15.0),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Horario", style: redStyle),
                  SizedBox(width: 7.5),
                  Column(
                    children: <Widget>[
                      Text("Lunes a Jueves______14:30 a 21:00",
                          style: greyStyle),
                      Text("Viernes y Sábados___14:30 a 22:00",
                          style: greyStyle),
                      Text("Domingo_____________14:30 a 21:00",
                          style: greyStyle),
                    ],
                  ),
                ],
              )),
          SizedBox(height: 20.0),
          Center(
            child: SizedBox(
              width: 350.0,
              height: 200.0,
              child: RestaurantMap(),
            ),
          )
        ],
      ),
    );
  }
}
