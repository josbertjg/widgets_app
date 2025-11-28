import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(selectedColor >= 0 || selectedColor < colorList.length,
            "Selected color must be between 0 and ${colorList.length - 1}");

  ThemeData getTheme() {
    // final colorScheme =
    //     ColorScheme.fromSeed(seedColor: colorList[selectedColor]);

    return ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false),
      // splashColor: Color(colorScheme.primary.value)
    );
  }
}
