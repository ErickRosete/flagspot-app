import 'package:flutter/material.dart';

class TimeDuration extends StatelessWidget {
  final String time;
  const TimeDuration(this.time);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[350],
      padding: EdgeInsets.all(2.5),
      child: Text(this.time),
    );
  }
}
