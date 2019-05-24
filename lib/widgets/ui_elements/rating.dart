import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int value;
  final double size;

  const Rating(this.value, [this.size = 25.0]);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          color: index < value ? Colors.amber : Colors.grey,
          size: this.size,
        );
      }),
    );
  }
}
