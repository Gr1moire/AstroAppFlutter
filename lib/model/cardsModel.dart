import 'package:flutter/material.dart';

class Cards {
  GlobalKey _titleKey = GlobalKey();

  final List<String> arcanaNames = [
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
  ];

  final List<String> arcanaSymbols = [
    "Protection & générosité",
    "Justice & prospérité",
    "Ingéniosité & volonté",
    "Savoir & éveil",
    "Liberté & découverte",
    "Reconsidération & maladie",
    "Force & foi",
    "Jugement & trahison",
    "Difficulté & persévérance",
    "Egarement de l'âme & introspection",
    "Obstination & jalousie",
    "Epreuve & vengeance",
  ];

  final List<Color> arcanaMainColors = [
    Color(0xff93a639),
    Color(0xffaf492e),
    Color(0xffaf6f2e),
    Color(0xff29576d),
    Color(0xff28725a),
    Color(0xff314174),
    Color(0xff93a639),
    Color(0xffaf492e),
    Color(0xffaf6f2e),
    Color(0xff29576d),
    Color(0xff28725a),
    Color(0xff314174)
  ];

  final List<Color> arcanaSecondaryColors = [
    Color(0xFFCBDC75),
    Color(0xffdd7b61),
    Color(0xffdda061),
    Color(0xff507b90),
    Color(0xff519881),
    Color(0xff5a699a),
    Color(0xffCBDC75),
    Color(0xffdd7b61),
    Color(0xffdda061),
    Color(0xff507b90),
    Color(0xff519881),
    Color(0xff5a699a)
  ];

  final List<Color> arcanaTertiaryColors = [
    Color(0xffedf982),
    Color(0xffffc0af),
    Color(0xffffd7af),
    Color(0xff8cafc0),
    Color(0xff8dc6b3),
    Color(0xff95a1c7),
    Color(0xffedf982),
    Color(0xffffc0af),
    Color(0xffffd7af),
    Color(0xff8cafc0),
    Color(0xff8dc6b3),
    Color(0xff95a1c7),
  ];

  final List<AssetImage> arcanaImages = [
    AssetImage('assets/cards/Bole.png'),
    AssetImage('assets/cards/Balance.png'),
    AssetImage('assets/cards/Spire.png'),
    AssetImage('assets/cards/Ewer.png'),
    AssetImage('assets/cards/Arrow.png'),
    AssetImage('assets/cards/Spear.png'),
    AssetImage('assets/cards/BoleReverse.png'),
    AssetImage('assets/cards/BalanceReverse.png'),
    AssetImage('assets/cards/SpireReverse.png'),
    AssetImage('assets/cards/EwerReverse.png'),
    AssetImage('assets/cards/ArrowReverse.png'),
    AssetImage('assets/cards/SpearReverse.png'),
  ];

  final AssetImage cardBack = AssetImage('assets/cards/Back.png');
  final List<String> positionText = [
    "Passé",
    "Présent",
    "Futur",
  ];

  double getTitlePosition(double screenHeight) {
    final RenderBox renderBoxTitle =
        _titleKey.currentContext.findRenderObject();
    final positionTitle = renderBoxTitle.localToGlobal(Offset.zero);
    return screenHeight - (positionTitle.dy * 1.5);
  }

  // TODO: Add color by arcana
  Widget displayArcanaName(List<List<int>> drawnCards, int lastCardDrawn,
      num activePage, bool isVisible) {
    String arcanaNameText = ' ';
    Color textColor = Colors.transparent;
    if (drawnCards[activePage][0] != -7) {
      arcanaNameText = this.arcanaNames[drawnCards[activePage][0]];
    } else if (!(drawnCards[activePage][0] == -7) && lastCardDrawn >= 0)
      arcanaNameText = this.arcanaNames[lastCardDrawn];
    else
      arcanaNameText = ' ';
    if (drawnCards[activePage][0] != -7)
      textColor = this.arcanaMainColors[drawnCards[activePage][0]];

    return (AnimatedOpacity(
        opacity: isVisible ? 1.0 : 0,
        duration: Duration(milliseconds: 500),
        child: Container(
            key: _titleKey,
            child: AnimatedDefaultTextStyle(
                style: TextStyle(color: textColor),
                duration: Duration(milliseconds: 150),
                child: Text(
                  arcanaNameText,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                )))));
  }

  Widget displayDrawPositionName(num activePage) {
    return Text(
      positionText[activePage],
      style: TextStyle(
        fontSize: 22,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget displayArcanaSymbols(List<List<int>> drawnCards, int lastCardDrawn,
      num activePage, bool isVisible) {
    String arcanaSymbolsText = 'Ceci est caché';
    Color textColor = Colors.transparent;
    if (drawnCards[activePage][0] != -7) {
      arcanaSymbolsText =
          "« " + this.arcanaSymbols[drawnCards[activePage][0]] + " »";
    } else if (!(drawnCards[activePage][0] == -7) && lastCardDrawn >= 0)
      arcanaSymbolsText = "« " + this.arcanaSymbols[lastCardDrawn] + " »";
    else
      arcanaSymbolsText = ' ';
    if (drawnCards[activePage][0] != -7)
      textColor = this.arcanaMainColors[drawnCards[activePage][0]];

    return (AnimatedOpacity(
        opacity: isVisible ? 1.0 : 0,
        duration: Duration(milliseconds: 500),
        child: Container(
            child: AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 150),
                style: TextStyle(color: textColor),
                child: Text(
                  arcanaSymbolsText,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                )))));
  }
}
