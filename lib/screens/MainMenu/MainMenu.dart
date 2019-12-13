import 'package:flutter/material.dart';
import 'package:astro_app/screens/MainMenu/components/body.dart';
import 'package:astro_app/theme/style.dart';

class MainMenu extends StatelessWidget {
  MainMenu({Key key}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      decoration: buildGradient(),
      child: Scaffold(
      body: Body(),
      )
    );
  }
}