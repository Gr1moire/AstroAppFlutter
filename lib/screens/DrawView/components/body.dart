import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'dart:math';

class Draws extends StatefulWidget {
  final int position;

  const Draws({Key key, this.position}) : super(key: key);

  @override
  DrawsState createState() => DrawsState(position: this.position);
}

class DrawsState extends State<Draws>
    with AutomaticKeepAliveClientMixin<Draws> {
  bool get wantKeepAlive => true;
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  final cardsIdentity = [
    // Arcana names
    [
      "Le Tronc",
      "La Balance",
      "La Tour",
      "L'Aiguière",
      "La Flèche",
      "L'Epieu",
      "Le Tronc renversé",
      "La Balance renversée",
      "La Tour renversée",
      "L'Aiguière renversée",
      "La Flèche renversée",
      "L'Epieu renversé",
    ],
    // Arcana symbols
    [
      "Protection & générosité",
      "Justice & prospérité",
      "Ingéniosité & volonté",
      "Savoir & éveil",
      "Liberté & découverte",
      "Force & foi",
      "Reconsidération & maladie",
      "Jugement & trahison",
      "Difficulté & persévérance",
      "Egarement de l'âme & introspection",
      "Obstination & jalousie",
      "Epreuve & vengeance",
    ],
    // Arcana main colors
    [
      "#edf982",
      "#ffc0af",
      "#ffd7af",
      "#8cafc0",
      "#8dc6b3",
      "#95a1c7",
      "#edf982",
      "#ffc0af",
      "#ffd7af",
      "#8cafc0",
      "#8dc6b3",
      "#95a1c7",
    ],
  ];

  final List<AssetImage> cardList = [
    AssetImage('assets/cards/Bole.png'),
    AssetImage('assets/cards/Balance.png'),
    AssetImage('assets/cards/Spire.png'),
    AssetImage('assets/cards/Ewer.png'),
    AssetImage('assets/cards/Arrow.png'),
    AssetImage('assets/cards/Spear.png'),
    AssetImage('assets/cards/BalanceReverse.png'),
    AssetImage('assets/cards/BoleReverse.png'),
    AssetImage('assets/cards/SpireReverse.png'),
    AssetImage('assets/cards/EwerReverse.png'),
    AssetImage('assets/cards/ArrowReverse.png'),
    AssetImage('assets/cards/SpearReverse.png'),
  ];

  final AssetImage cardBack = AssetImage('assets/cards/Back.png');
  final positionText = [
    "Passé",
    "Futur",
    "Présent",
  ];
  final int position;
  var drawnCards = List(3);
  AssetImage cardCurrent;
  bool enableTouch;
  bool refreshIsVisible;
  num previousCard;

  DrawsState({this.position});

  @override
  void initState() {
    super.initState();
    this.enableTouch = true;
    this.cardCurrent = this.cardBack;
    this.refreshIsVisible = false;
    this.previousCard = -1;
  }

  void _changeArcana() {
    num randomNum = Random().nextInt(cardList.length);
    this.drawnCards[this.position] = randomNum;
    setState(() {
      this.cardCurrent = cardList[randomNum];
      this.enableTouch = false;
      this.refreshIsVisible = true;
    });
  }

  Widget _setResetButton() {
    return (Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      AnimatedOpacity(
          opacity: refreshIsVisible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
              child: ButtonTheme(
                  shape: CircleBorder(),
                  child: RaisedButton(
                    onPressed: () {
                      if (refreshIsVisible) {
                        cardKey.currentState.toggleCard();
                        setState(() {
                          this.drawnCards[this.position] = null;
                          this.enableTouch = true;
                          this.refreshIsVisible = false;
                        });
                      }
                    },
                    color: Colors.white,
                    child: Icon(
                      Icons.refresh,
                      color: Colors.black,
                    ),
                  ))))
    ]));
  }

  Widget _setArcanaNameText() {
    String arcanaName = ' ';

    // ! There certainly is a better way to do that.
    if (this.drawnCards[this.position] is num) {
      this.previousCard = this.drawnCards[this.position];
      arcanaName = this.cardsIdentity[0][this.drawnCards[this.position]];
    } else if (!(this.drawnCards[this.position] is num) &&
        this.previousCard >= 0)
      arcanaName = this.cardsIdentity[0][this.previousCard];
    else
      arcanaName = ' ';

    return (AnimatedOpacity(
        opacity: this.refreshIsVisible ? 1.0 : 0,
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

  @override
  Widget build(BuildContext context) {
    BoxShadow cardsShadow = BoxShadow(
        blurRadius: 1.5,
        spreadRadius: -7,
        color: Colors.black54,
        offset: Offset(7, 8));

    return Stack(children: [
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: _setResetButton(),
        ),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 75.0),
          child: Column(
              children: <Widget>[
                // Cards handler
                FlipCard(
                  key: cardKey,
                  flipOnTouch: enableTouch,
                  onFlip: () {
                    if (enableTouch)
                      this._changeArcana();
                    else
                      return;
                  },
                  direction: FlipDirection.HORIZONTAL, // default
                  // Back of the card
                  front: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [cardsShadow]),
                            child: Image(image: cardBack),
                          )
                        ]),
                  ),
                  // Front of the card
                  back: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [cardsShadow]),
                            child: Image(image: cardCurrent),
                          )
                        ]),
                  ),
                ),
                // Position in the drawing
                Text(
                  this.positionText[this.position],
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                // Display drawn arcana name
                _setArcanaNameText(),
              ]),
        ),
      ])
    ]);
  }
}
