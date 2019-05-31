import 'package:flutter/material.dart';

import '../../models/sort.dart';

class FilterRadio extends StatelessWidget {
  final SortOptions options;
  final SortOptionRadio sortOptionRadio;
  final Function onPressed;
  FilterRadio({this.options, this.sortOptionRadio, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(
        this.sortOptionRadio.title,
        style: TextStyle(fontSize: 17.0),
      ),
      value: this.sortOptionRadio.sortOption,
      groupValue: this.options,
      onChanged: this.onPressed,
    );
  }
}
