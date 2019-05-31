import 'package:flutter/material.dart';

import '../../models/section.dart';

class MenuButton extends StatelessWidget {
  final Section section;
  final Function onPressed;
  MenuButton(this.section, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.5),
      child: FloatingActionButton(
        heroTag: section.id,
        child: Icon(
          section.icon,
          color: section.active ? Colors.white : Colors.red,
        ),
        backgroundColor: section.active ? Colors.red : Colors.white,
        onPressed: this.onPressed,
      ),
    );
  }
}
