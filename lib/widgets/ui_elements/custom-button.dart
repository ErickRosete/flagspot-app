import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double radius = 15.0;
  final bool active;
  final String text;

  const CustomButton(this.text, [this.active = false]);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius - 2.0),
        child: Material(
          color: this.active ? Colors.red : Colors.transparent,
          child: InkWell(
            onTap: () => {print("clicked")},
            child: Container(
              width: 150.0,
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 6.0,
              ),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: this.active ? Colors.white : Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
