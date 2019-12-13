import 'package:flutter/material.dart';
import 'package:astro_app/screens/MainMenu/components/body.dart';

class MainMenu extends StatelessWidget {
  MainMenu({Key key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}