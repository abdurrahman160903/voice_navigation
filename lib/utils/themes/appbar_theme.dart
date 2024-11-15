import 'package:flutter/material.dart';

class NAppBarTheme {
  NAppBarTheme._();

  /// AppBarTheme for light theme
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 24.0,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
      size: 24.0,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );

  /// AppBarTheme for dark theme
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.black,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 24.0,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
      size: 24.0,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}
