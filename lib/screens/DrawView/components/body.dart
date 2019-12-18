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
  GlobalKey _titleKey = GlobalKey();
  Cards cardsModel = Cards();
  // ! _lastCardDrawn should be an updateDrawnCard()'s variable
  int _lastCardDrawn;
  num _activePage;
  double _slidingUpPanelHeight = 1;
  double _screenHeight;
  bool _shouldRefreshBeVisible;
  bool _shouldArcanaNameBeVisible;
  String positionName;
  List<List<int>> drawnCards = [
    // ? I guess we could just initialize it on the fly...
    // Each member is composed of [0] as the drawn card, and [1] as it's oposite (which is [0] + 6)
    [-7, -7],
    [-7, -7],
    [-7, -7],
  ];

  DrawsState();

  @override
  void initState() {
    super.initState();
    this._screenHeight = MediaQuery.of(context).size.height;
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
      this.drawnCards[position][1] =
          cardDrawn <= 5 ? cardDrawn + 6 : cardDrawn - 6;
    });
  }

  double _getTitlePosition() {
    final RenderBox renderBoxTitle = _titleKey.currentContext.findRenderObject();
    final positionTitle = renderBoxTitle.localToGlobal(Offset.zero);
    return MediaQuery.of(context).size.height - (positionTitle.dy * 1.5);
  }

  // TODO: Fix the animated opacity; Add color by arcana
  Widget _displayArcanaName() {
    String arcanaName = ' ';
    // ! There certainly is a better way to do that.
    if (this.drawnCards[this._activePage][0] != -7) {
      this._lastCardDrawn = this.drawnCards[this._activePage][0];
      arcanaName =
          this.cardsModel.arcanaNames[this.drawnCards[this._activePage][0]];
    } else if (!(this.drawnCards[this._activePage][0] == -7) &&
        this._lastCardDrawn >= 0)
      arcanaName = this.cardsModel.arcanaNames[this._lastCardDrawn];
    else
      arcanaName = ' ';

    return (AnimatedOpacity(
        opacity: this._shouldArcanaNameBeVisible ? 1.0 : 0,
        duration: Duration(milliseconds: 500),
        child: Container(
          
            key: _titleKey,
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
        fontSize: 22,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget _displayArcanaSymbols() {
    String arcanaSymbols = 'Ceci est caché';
    if (this.drawnCards[this._activePage][0] != -7) {
      arcanaSymbols = "« " +
          this.cardsModel.arcanaSymbols[this.drawnCards[this._activePage][0]] +
          " »";
    } else if (!(this.drawnCards[this._activePage][0] == -7) &&
        this._lastCardDrawn >= 0)
      arcanaSymbols =
          "« " + this.cardsModel.arcanaSymbols[this._lastCardDrawn] + " »";
    else
      arcanaSymbols = ' ';

    return (AnimatedOpacity(
        opacity: this._shouldArcanaNameBeVisible ? 1.0 : 0,
        duration: Duration(milliseconds: 500),
        child: Container(
            child: Text(
          arcanaSymbols,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ))));
  }

  // TODO: Add a curved swipe animation
  Widget _displaySwippableCards() {
    return (Container(
      child: PageView.builder(
        onPageChanged: (num) {
          setState(() {
            this._shouldRefreshBeVisible = false;
            this._activePage = num;
            if (this.drawnCards[num][0] == -7) {
              this._shouldArcanaNameBeVisible = false;
            }
          });
          setState(() {
            this.positionName = cardsModel.positionText[this._activePage];
            this._shouldRefreshBeVisible = true;
          });
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
                          ))),
                ),
              )),
            ],
          );
        },
      ),
    ));
  }

  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    // SlidingUpPanel from here
    return SlidingUpPanel(
      maxHeight: this._slidingUpPanelHeight,
      minHeight: MediaQuery.of(context).size.height / 10,
      panel: Container(
          decoration:
              BoxDecoration(color: Colors.redAccent[100], borderRadius: radius),
          child: Center(
            child: Text("Contenu du widget"),
          )),
      collapsed: Container(
        decoration:
            BoxDecoration(color: Colors.redAccent[200], borderRadius: radius),
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
              _displayDrawPositionName(),
              _displayArcanaName(),
            ]),
          ),
          Expanded(
            flex: 3,
            child: _displaySwippableCards(),
          ),
          Expanded(
            flex: 1,
            child: _displayArcanaSymbols(),
            //    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            //      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          )
        ])
      ]),
    );
  }
    @override
  void afterFirstLayout(BuildContext context) {
    setState(() {
      this._slidingUpPanelHeight = _getTitlePosition();
    });
  }
}
