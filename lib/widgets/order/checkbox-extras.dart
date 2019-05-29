import 'package:flutter/material.dart';

import '../../models/order.dart';

class CheckboxExtras extends StatelessWidget {
  final double radius = 20.0;
  final Extra extra;
  final Function onSelect;
  CheckboxExtras(this.extra, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: extra.selected,
          onChanged: this.onSelect,
        ),
        Text(extra.name),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            height: 20.0,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
          ),
        ),
        Text("\$${extra.price}"),
      ],
    );
  }
}
