import 'package:flutter/material.dart';

class Cards{
  
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
      "Force & foi",
      "Reconsidération & maladie",
      "Jugement & trahison",
      "Difficulté & persévérance",
      "Egarement de l'âme & introspection",
      "Obstination & jalousie",
      "Epreuve & vengeance",
    ];

    final List<String> arcanaMainColors = [
      "edf982",
      "ffc0af",
      "ffd7af",
      "8cafc0",
      "8dc6b3",
      "95a1c7",
      "edf982",
      "ffc0af",
      "ffd7af",
      "8cafc0",
      "8dc6b3",
      "95a1c7",
    ];

  final List<AssetImage> cardsList = [
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
    "Futur",
    "Présent",
  ];
}
