import 'package:flutter/material.dart';

class NSearchBarTheme {
  NSearchBarTheme._();

  /// SearchBarTheme for light theme
  static final lightSearchBarTheme = SearchBarThemeData(
    backgroundColor: WidgetStateProperty.all(Colors.black.withOpacity(0.1)),
    elevation: WidgetStateProperty.all(0),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    textStyle: WidgetStateProperty.all(
      const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
    ),
    hintStyle: WidgetStateProperty.all(
      TextStyle(
        fontSize: 16,
        color: Colors.black.withOpacity(0.5),
      ),
    ),
  );

  /// SearchBarTheme for dark theme
  static final darkSearchBarTheme = SearchBarThemeData(
    backgroundColor: WidgetStateProperty.all(Colors.white.withOpacity(0.1)),
    elevation: WidgetStateProperty.all(0),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    textStyle: WidgetStateProperty.all(
      const TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
    ),
    hintStyle: WidgetStateProperty.all(
      TextStyle(
        fontSize: 16,
        color: Colors.white.withOpacity(0.5),
      ),
    ),
  );
}
