import 'package:flutter/material.dart';
import 'package:voice_navigation/utils/themes/appbar_theme.dart';
import 'package:voice_navigation/utils/themes/searchbar_theme.dart';
import 'package:voice_navigation/utils/themes/text_theme.dart';
import 'package:voice_navigation/utils/themes/elevated_button_theme.dart';
import 'package:voice_navigation/utils/themes/toggle_buttons_theme.dart';
import 'listtile_theme.dart';

class NAppTheme {
  NAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: NTextTheme.lightTextTheme,
    elevatedButtonTheme: NElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: NAppBarTheme.lightAppBarTheme,
    searchBarTheme: NSearchBarTheme.lightSearchBarTheme,
    listTileTheme: NListTileTheme.lightListTileTheme,
    // toggleButtonsTheme: NToggleButtonTheme.lightToggleButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: NTextTheme.darkTextTheme,
    elevatedButtonTheme: NElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: NAppBarTheme.darkAppBarTheme,
    searchBarTheme: NSearchBarTheme.darkSearchBarTheme,
    listTileTheme: NListTileTheme.darkListTileTheme,
    // toggleButtonsTheme: NToggleButtonTheme.darkToggleButtonTheme,
  );
}
