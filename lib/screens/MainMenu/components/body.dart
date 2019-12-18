import 'package:flutter/material.dart';
import 'package:astro_app/screens/DrawView/DrawView.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Top-left question icon
    var questionIcon = Column(children: <Widget>[
      const SizedBox(height: 35),
      Row(children: <Widget>[
        Container(
            child: ButtonTheme(
                shape: CircleBorder(),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Icon(
                    Icons.help,
                    size: 30,
                    color: Colors.black,
                  ),
                ))),
      ])
    ]);

    // Main icon on first screen
    var mainIcon = Icon(
      Icons.stars,
      color: Colors.orangeAccent,
      size: 220,
      semanticLabel: 'Logo test',
    );

    // Start button
    var raisedButton = ButtonTheme(
        minWidth: 300.0,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrawView(),
                ));
          },
          child: const Text('Tirage',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          color: Colors.amber[300],
         // splashColor: Colors.deepOrange[300],
          shape: StadiumBorder(),
        ));

    return Stack(children: <Widget>[
      questionIcon,
      // Logo and application title
      Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              mainIcon,
              Text(
                'AstroApp',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 200,
                width: 100,
              ),
              raisedButton,
            ],
          ),
        ),
      ),
    ]);
  }
}
