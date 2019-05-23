import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int value;

  const Rating(this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          color: index < value ? Colors.amber : Colors.grey,
          size: 30.0,
        );
      }),
    );
  }
}
