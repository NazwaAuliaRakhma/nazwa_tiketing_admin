import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  colorScheme: const ColorScheme(
    primary: Colors.black,
    secondary: Colors.yellow,
    surface: Colors.grey,
    background: Colors.black,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
    brightness: Brightness.dark,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
    headline6: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
    bodyText2: TextStyle(fontSize: 14.0, color: Colors.white),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.white),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.yellow),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.yellow,
    textTheme: ButtonTextTheme.primary,
  ),
);
