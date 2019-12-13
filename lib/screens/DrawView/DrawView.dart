import 'package:flutter/material.dart';
import 'package:astro_app/theme/style.dart';
import 'package:astro_app/screens/DrawView/components/body.dart';

class DrawView extends StatelessWidget {
  const DrawView({
    Key key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      decoration: buildGradient(),
      child: Scaffold(
          body: PageView(
        children: <Widget>[
          Container(
            child: Draws(key: UniqueKey(), position: 0),
          ),
          Container(
            child: Draws(key: UniqueKey(), position: 1),
          ),
          Container(
            child: Draws(key: UniqueKey(), position: 2),
          )
        ],
      )),
    );
  }
}
