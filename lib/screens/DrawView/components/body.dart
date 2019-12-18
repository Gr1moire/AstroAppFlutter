import 'package:flutter/material.dart';
import 'package:astro_app/screens/DrawView/components/DrawSwipeElement.dart';
import 'package:astro_app/model/cardsModel.dart';

class Draws extends StatefulWidget {
  const Draws({Key key}) : super(key: key);

  @override
  DrawsState createState() => DrawsState();
}

class DrawsState extends State<Draws> {
  Cards cardsModel = Cards();
  // ! _lastCardDrawn should be an updateDrawnCard()'s variable
  int _lastCardDrawn;
  num _activePage;
  bool _shouldRefreshBeVisible;
  bool _shouldArcanaNameBeVisible;
  String positionName;
  List<List<int>> drawnCards = [
    // ? I guess we could just initialize it on the fly...
    [-7, -7],
    [-7, -7],
    [-7, -7],
  ];

  DrawsState();

  @override
  void initState() {
    super.initState();
    this._shouldRefreshBeVisible = true;
    this._shouldArcanaNameBeVisible = false;
    this._activePage = 0;
    this.positionName = cardsModel.positionText[this._activePage];
    this._lastCardDrawn = -1;
  }

  void updateDrawnCards(int position, int cardDrawn) {
    setState(() {
      if (this.drawnCards[position][0] != -7)
        this._lastCardDrawn = this.drawnCards[position][0];
      this._shouldArcanaNameBeVisible = true;
      this.drawnCards[position][0] = cardDrawn;
      this.drawnCards[position][1] = cardDrawn <= 5 ? cardDrawn + 6 : cardDrawn - 6; 
    });
  }

  Widget _displayArcanaName() {
    String arcanaName = ' ';

    // ! There certainly is a better way to do that.
    if (this.drawnCards[this._activePage][0] != -7) {
      this._lastCardDrawn = this.drawnCards[this._activePage][0];
      arcanaName = this.cardsModel.arcanaNames[this.drawnCards[this._activePage][0]];
    } else if (!(this.drawnCards[this._activePage][0] == -7) &&
        this._lastCardDrawn >= 0)
      arcanaName = this.cardsModel.arcanaNames[this._lastCardDrawn];
    else
      arcanaName = ' ';

    return (AnimatedOpacity(
        opacity: this._shouldArcanaNameBeVisible ? 1.0 : 0,
        duration: Duration(milliseconds: 500),
        child: Container(
            child: Text(
          arcanaName,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ))));
  }

  Widget _displayDrawPositionName() {
    return Text(
          this.positionName,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        );
  }

  // TODO: Add a curved swipe animation
  Widget _displaySwippableCards() {
    return (Container(
      child: PageView.builder(
        onPageChanged: (num) {
          setState(() {
            this._shouldRefreshBeVisible = false;
            this._activePage = num;
          });
          setState(() {
            this.positionName = cardsModel.positionText[this._activePage];
            this._shouldRefreshBeVisible = true;
          });
        },
        controller: PageController(initialPage: this._activePage, viewportFraction: 0.70),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              InkWell(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(2.0),
                          child: Center(
                            child: DrawSwipeElement(updateDrawnCards: updateDrawnCards, position: this._activePage, drawnCards: this.drawnCards),
                          ))),
                ),
              ),
            ],
          );
        },
      ),
    ));
  }

  Widget build(BuildContext context) {
    return Stack(children: [
      _displaySwippableCards(),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 75.0),
            child: Column(children: <Widget>[
              _displayDrawPositionName(),
              _displayArcanaName(),
            ]),
          ),
        ])
      ])
    ]);
  }
}
