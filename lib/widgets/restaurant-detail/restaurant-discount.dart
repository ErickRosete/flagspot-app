import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RestaurantDiscount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CarouselSlider(
        height: 520.0,
        // enlargeCenterPage: true,
        // autoPlay: true,
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width * 2 / 3,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                color: Colors.transparent,
                child: DiscountCard(),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class DiscountCard extends StatelessWidget {
  final double radius = 10.0;
  final double margin = 10.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Image.asset(
              "assets/food.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: margin),
            child: Text(
              "Personales Dos Variedades",
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: margin),
            child: Text(
              "Promo Vence: 5/28/2019",
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: margin),
            child: Text(
              "\$120",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: margin),
            child: Text(
              "Pizza personal con mitad de pepperoni y mitad valeria. Con una promoción especial solo por unos días.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
          // Expanded(
          //   child: Container(),
          // ),
          Container(
            margin: EdgeInsets.only(top: margin),
            child: Text(
              "Nota: Tu orden una vez confirmada no podra ser cancelada. Favor de revisar con atención su pedido. No aplica servicio a domicilio.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 13.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: margin),
            child: ButtonTheme(
              minWidth: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(radius),
                        bottomRight: Radius.circular(radius))),
                color: Colors.red,
                onPressed: () {},
                child: Text(
                  "Ordenar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
