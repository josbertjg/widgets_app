import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.indigo,
  Colors.purple,
  Colors.pink,
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.teal
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 || selectedColor < colorList.length,
            "Selected color must be between 0 and ${colorList.length - 1}");

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
