import 'package:flutter/material.dart';
import 'package:astro_app/screens/MainMenu/MainMenu.dart';
import 'package:astro_app/theme/style.dart';
import 'package:astro_app/screens/DrawView/DrawView.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ExampleApp',
      theme: appTheme(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => MainMenu(),
        "Draw": (BuildContext context) => DrawView(),
      },
    );
  }
}
