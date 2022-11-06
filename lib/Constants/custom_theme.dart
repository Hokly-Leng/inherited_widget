import 'package:flutter/material.dart';

class CustomTheme {
  final Color highlightColor = const Color.fromARGB(225, 64, 123, 255);
  String name = 'New Error';

  // using Getter method
  String get showname {
    return name;
  }

  // using Setter method
  set newName(String newname) {
    name = newname;
  }

  static ThemeData get lightTheme {
    return ThemeData(
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontFamily: 'ZenAnti',
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
        labelMedium: TextStyle(
          fontSize: 16,
          fontFamily: 'Roboto',
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
        labelSmall: TextStyle(
          fontSize: 10,
          color: Colors.black87,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 25,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
