import 'package:flutter/material.dart';

class NListTileTheme {
  NListTileTheme._();

  static final lightListTileTheme = ListTileThemeData(
    tileColor: Colors.black.withOpacity(0.1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    selectedTileColor: Colors.green.withOpacity(0.3),
    selectedColor: Colors.black,
  );

  static final darkListTileTheme = ListTileThemeData(
    tileColor: Colors.white.withOpacity(0.1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    selectedTileColor: Colors.green.withOpacity(0.3),
    selectedColor: Colors.white,
  );
}
