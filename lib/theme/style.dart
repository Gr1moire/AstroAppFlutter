import 'package:flutter/material.dart';

BoxDecoration buildGradient() {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 1],
      colors: [
        Colors.amber[100],
        Colors.amber[50],
      ],
    ),
  );
}

ThemeData appTheme() {
  return ThemeData(
      primaryColor: Colors.deepPurple[900],
      accentColor: Colors.deepPurple[900],
      hintColor: Colors.white,
      dividerColor: Colors.white,
      buttonColor: Colors.orangeAccent,
      scaffoldBackgroundColor: Colors.white70,
      canvasColor: Colors.black12,
      textTheme: TextTheme(
        headline: TextStyle(color: Colors.black),
        body1: TextStyle(color: Colors.black),
        display1: TextStyle(color: Colors.black),
      ));
}
