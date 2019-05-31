import 'package:flutter/material.dart';

enum SortOptions { popularity, deliveryTime, deliveryPrice, price }

class SortOptionRadio {
  final String title;
  final SortOptions sortOption;

  SortOptionRadio({
    @required this.title,
    @required this.sortOption,
  });
}
