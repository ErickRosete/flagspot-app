import 'package:flutter/material.dart';
import '../../widgets/ui_elements/rating.dart';

class OrderPage extends StatelessWidget {
  final List<String> options = [
    "Menú",
    "Información",
    "Comentarios",
    "Ubicación"
  ];
  @override
  Widget build(BuildContext context) {
    TextStyle descStyle = TextStyle(fontSize: 20.0);
    TextStyle redStyle = TextStyle(fontSize: 20.0, color: Colors.red);
    TextStyle greyStyle = TextStyle(fontSize: 20.0, color: Colors.grey[700]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/pizza.jpg",
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Pepperoni",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
