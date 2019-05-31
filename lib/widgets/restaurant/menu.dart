import 'package:flutter/material.dart';
import 'menu-button.dart';
import 'filter-button.dart';
import '../../models/section.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<Section> sections = [
    Section(active: true, icon: Icons.restaurant_menu, id: "restaurants"),
    Section(active: false, icon: Icons.local_bar, id: "bars"),
    Section(active: false, icon: Icons.local_mall, id: "stores"),
    Section(active: false, icon: Icons.add, id: "add"),
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: sections
                    .map((sec) => MenuButton(sec, () {
                          setState(() {
                            sections.singleWhere((sec) => sec.active).active =
                                false;
                            sec.active = true;
                          });
                        }))
                    .toList(),
              ),
              FilterButton()
            ],
          ),
        ),
      ),
    );
  }
}
