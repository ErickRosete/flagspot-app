import 'package:flutter/material.dart';
import '../../widgets/ui_elements/rating.dart';
import '../../widgets/ui_elements/custom-button.dart';

class RestaurantDetailPage extends StatelessWidget {
  final List<String> options = [
    "Menú",
    "Información",
    "Comentarios",
    "Ubicación"
  ];

  goToOrder(BuildContext context) {
    Navigator.pushNamed(context, '/order');
  }

  optionFunction() {
    print("clicked");
  }

  @override
  Widget build(BuildContext context) {
    TextStyle descStyle = TextStyle(fontSize: 20.0);
    TextStyle redStyle = TextStyle(fontSize: 20.0, color: Colors.red);
    TextStyle greyStyle = TextStyle(fontSize: 20.0, color: Colors.grey[700]);

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
                margin: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40.0,
                          backgroundImage:
                              AssetImage("assets/restaurante-3.jpg"),
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
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: ButtonBar(
                          children: options
                              .map(
                                (option) => CustomButton(
                                    option,
                                    option == "Información",
                                    option == "Menú"
                                        ? () => goToOrder(context)
                                        : optionFunction),
                              )
                              .toList(),
                        ),
                      ),
                    ),
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
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
