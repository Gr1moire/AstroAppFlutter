import 'package:flutter/material.dart';
import 'package:astro_app/screens/MainMenu/MainMenu.dart';
import 'package:astro_app/theme/style.dart';
import 'package:astro_app/screens/DrawView/DrawView.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<AssetImage> assetsToCache = [
    AssetImage('assets/cards/Back.png'),
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

  @override
  Widget build(BuildContext context) {
    this.assetsToCache.forEach((image) => precacheImage(image, context));
    //   SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black, systemNavigationBarColor: Colors.black));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AstroApp',
      theme: appTheme(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => MainMenu(),
        "Draw": (BuildContext context) => DrawView(),
      },
    );
  }
}
