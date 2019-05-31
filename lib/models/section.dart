import 'package:flutter/material.dart';

class Section {
  final String id;
  final IconData icon;
  bool active;

  Section({
    @required this.id,
    @required this.active,
    @required this.icon,
  });
}
