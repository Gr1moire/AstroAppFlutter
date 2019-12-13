import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: Colors.deepPurple[900],
    accentColor: Colors.deepPurple[900],
    hintColor: Colors.white,
    dividerColor: Colors.white,
    buttonColor: Colors.orangeAccent,
    scaffoldBackgroundColor: Colors.amber[50],
    canvasColor: Colors.black12,
    textTheme: TextTheme(
      headline: TextStyle(color: Colors.black),
      body1: TextStyle(color: Colors.black),
      display1: TextStyle(color: Colors.black),
    )
  );
}