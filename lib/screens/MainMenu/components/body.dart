import 'package:flutter/material.dart';
import 'package:astro_app/screens/DrawView/DrawView.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Top-left question icon
    var questionIcon = Container(
      child: Column(children: <Widget>[
        const SizedBox(height: 20),
        Row(
          children: <Widget>[
            const SizedBox(width: 25),
            Icon(
              Icons.help_outline,
              color: Colors.black,
              size: 50,
              semanticLabel: 'Question',
            )
          ],
        ),
      ]),
    );

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
            color: Colors.orangeAccent,
            splashColor: Colors.deepOrange,
            shape: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black))));

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
                'Astrologian Mobile Application',
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
