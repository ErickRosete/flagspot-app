import 'package:flutter/material.dart';
import 'menu-button.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> menuButtons = new List<Widget>();
    for (var i = 0; i <= 4; i++) {
      menuButtons.add(MenuButton('menu-$i', 'btn-up-$i'));
    }

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: menuButtons,
        ),
      ),
    );
  }
}
