import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:astro_app/screens/DrawView/components/DrawSwipeElement.dart';
import 'package:astro_app/model/cardsModel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Draws extends StatefulWidget {
  const Draws({Key key}) : super(key: key);

  @override
  DrawsState createState() => DrawsState();
}

class DrawsState extends State<Draws> with AfterLayoutMixin<Draws> {
  PanelController _slidingPanelControler = PanelController();
  Cards cardsModel = Cards();
  int _lastCardDrawn;
  num _activePage;
  double _slidingUpPanelHeight = 1;
  double _screenHeight;
  bool _shouldRefreshBeVisible;
  bool _shouldArcanaNameBeVisible;
  List<List<int>> drawnCards = [
    // ? I guess we could just initialize it on the fly...
    // Each member is composed of [0] as the drawn card, and [1] as it's oposite (which is [0] + 6 if [0] < 6 or [0] - 6 if [0] >= 6)
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
    this._lastCardDrawn = -1;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    this._screenHeight = MediaQuery.of(context).size.height;
  }

  void updateDrawnCards(int position, int cardDrawn) {
    setState(() {
      if (this.drawnCards[position][0] != -7) {
        this._lastCardDrawn = this.drawnCards[position][0];
      }
      this._slidingPanelControler.show();
      this._shouldArcanaNameBeVisible = true;
      this.drawnCards[position][0] = cardDrawn;
      this.drawnCards[position][1] =
          cardDrawn <= 5 ? cardDrawn + 6 : cardDrawn - 6;
    });
  }

  // TODO: Add a curved swipe animation
  Widget _displaySwippableCards() {
    return (Container(
      child: PageView.builder(
        onPageChanged: (num) {
          setState(
            () {
              this._shouldRefreshBeVisible = false;
              this._activePage = num;
              if (this.drawnCards[num][0] == -7) {
                this._shouldArcanaNameBeVisible = false;
                this._slidingPanelControler.hide();
              } else {
                this._shouldArcanaNameBeVisible = true;
                this._slidingPanelControler.show();
              }
            },
          );
        },
        controller: PageController(
            initialPage: this._activePage, viewportFraction: 0.70),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              InkWell(
                  child: Padding(
                padding: EdgeInsets.only(right: 5, left: 5),
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2.0),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 41, top: 35),
                      child: Center(
                        child: DrawSwipeElement(
                            updateDrawnCards: updateDrawnCards,
                            position: this._activePage,
                            drawnCards: this.drawnCards),
                      ),
                    ),
                  ),
                ),
              )),
            ],
          );
        },
      ),
    ));
  }

  Widget build(BuildContext context) {
    Color panelContentColor = Colors.transparent;
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    if (this.drawnCards[this._activePage][0] != -7)
      panelContentColor = cardsModel.arcanaMainColors[this.drawnCards[this._activePage][0]];
    // SlidingUpPanel from here
    return SlidingUpPanel(
      maxHeight: this._slidingUpPanelHeight,
      minHeight: this._screenHeight / 10,
      controller: _slidingPanelControler,
      panel: Container(
          decoration:
              BoxDecoration(color: panelContentColor, borderRadius: radius),
          child: Center(
            child: Text("Contenu du widget"),
          )),
      collapsed: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        decoration:
            BoxDecoration(color: panelContentColor, borderRadius: radius),
        child: Center(
          child: Text(
            "Title du widget",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      borderRadius: radius,
      // To here
      body: Stack(children: [
        Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 75.0),
            child: Column(children: <Widget>[
              cardsModel.displayDrawPositionName(this._activePage),
              cardsModel.displayArcanaName(this.drawnCards, this._lastCardDrawn,
                  this._activePage, this._shouldArcanaNameBeVisible),
            ]),
          ),
          Expanded(
            flex: 3,
            child: _displaySwippableCards(),
          ),
          Expanded(
            flex: 1,
            child: cardsModel.displayArcanaSymbols(
                this.drawnCards,
                this._lastCardDrawn,
                this._activePage,
                this._shouldArcanaNameBeVisible),
          )
        ])
      ]),
    );
  }

  // This method is immediately executed after build()
  @override
  void afterFirstLayout(BuildContext context) {
    setState(() {
      this._slidingUpPanelHeight =
          cardsModel.getTitlePosition(this._screenHeight);
    });
    this._slidingPanelControler.hide();
  }
}
