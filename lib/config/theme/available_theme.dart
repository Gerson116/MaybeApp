import 'package:flutter/material.dart';

class AvailableTheme {

  int colorSelected;

  static final List<Color> _listColor = [
    Colors.blue.shade200,
    Colors.pink.shade200,
    Colors.green.shade200,
    Colors.purple.shade200,
    Colors.yellow.shade200,
    Colors.brown.shade200,
    Colors.red.shade200
  ];

  AvailableTheme({this.colorSelected = 0})
      : assert(colorSelected >= 0 && colorSelected <= _listColor.length - 1);

  ThemeData colorTheme() {
    return ThemeData(colorSchemeSeed: _listColor[colorSelected]);
  }
}
