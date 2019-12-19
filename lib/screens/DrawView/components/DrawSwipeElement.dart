import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:astro_app/model/cardsModel.dart';
import 'dart:math';

class DrawSwipeElement extends StatefulWidget {
  final int position;
  final void Function(int position, int drawnCard) updateDrawnCards;
  final List<List<int>> drawnCards;

  const DrawSwipeElement(
      {Key key, this.position, this.updateDrawnCards, this.drawnCards})
      : super(key: key);

  @override
  DrawSwipeElementState createState() =>
      DrawSwipeElementState(position: this.position);
}

class DrawSwipeElementState extends State<DrawSwipeElement>
    with AutomaticKeepAliveClientMixin<DrawSwipeElement> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  int position;
  var drawnCards = List<int>(3);
  Cards cardsModel = Cards();
  AssetImage _cardCurrent;
  bool _enableTouch;
  bool _refreshIsVisible;

  @override
  DrawSwipeElementState({this.position});

  @override
  void initState() {
    super.initState();
    this._enableTouch = true;
    this._cardCurrent = cardsModel.cardBack;
    this._refreshIsVisible = false;
  }

// ! This function does many useless operations, it could be optimized by skiping a line if all members are equel to -7
  int _checkIfCardWasDrawn(int randomNum) {
    List<List<int>> allCards = widget.drawnCards;

    for (int primaryIndex = 0, secondaryIndex = 0;
        primaryIndex <= (allCards.length - 1);
        secondaryIndex++) {
      if (randomNum == allCards[primaryIndex][secondaryIndex] ||
          randomNum >= (this.cardsModel.arcanaNames.length)) {
        randomNum >= (this.cardsModel.arcanaNames.length - 1)
            ? randomNum = 0
            : randomNum++;
        secondaryIndex = -1;
        primaryIndex = 0;
      }
      if (secondaryIndex >= (allCards[primaryIndex].length - 1)) {
        secondaryIndex = -1;
        primaryIndex++;
      }
    }
    return (randomNum);
  }

  void _changeArcana() {
    num randomNum = Random().nextInt(cardsModel.arcanaImages.length);
    randomNum = _checkIfCardWasDrawn(randomNum);
    this.drawnCards[widget.position] = randomNum;
    setState(() {
      this._cardCurrent = cardsModel.arcanaImages[randomNum];
      this._enableTouch = false;
    });
    widget.updateDrawnCards(widget.position, randomNum);
  }

  Widget _setResetButton() {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: _setResetButton(),
        ),
        AnimatedOpacity(
          opacity: _refreshIsVisible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
            child: ButtonTheme(
              shape: CircleBorder(),
              child: RaisedButton(
                onPressed: () {
                  if (_refreshIsVisible) {
                    cardKey.currentState.toggleCard();
                    setState(() {
                      this.drawnCards[widget.position] = null;
                      this._enableTouch = true;
                      this._refreshIsVisible = false;
                    });
                  }
                },
                color: Colors.white,
                child: Icon(
                  Icons.refresh,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }

  Widget build(BuildContext context) {
    super.build(context);
    BoxShadow cardsShadow = BoxShadow(
        blurRadius: 1.5,
        spreadRadius: -7,
        color: Colors.black54,
        offset: Offset(7, 8));
    return FlipCard(
      key: cardKey,
      direction: FlipDirection.HORIZONTAL,
      flipOnTouch: _enableTouch,
      onFlip: () {
        if (_enableTouch)
          this._changeArcana();
        else
          return;
      },
      // Back of the card
      front: FittedBox(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            decoration: BoxDecoration(boxShadow: [cardsShadow]),
            child: Image(image: cardsModel.cardBack),
          )
        ]),
      ),
      // Front of the card
      back: FittedBox(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            decoration: BoxDecoration(boxShadow: [cardsShadow]),
            child: Image(image: _cardCurrent),
          )
        ]),
      ),
    );
  }

  bool get wantKeepAlive => true;
}
