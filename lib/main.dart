import 'package:flutter/material.dart';
import 'package:flutter_provider_app_demo/src/pages/home_page.dart';
import 'package:flutter_provider_app_demo/src/providers/heroesinfo.dart';
import 'package:flutter_provider_app_demo/src/providers/villanosInfo.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /*@override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => HeroesInfo(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (context) => HeroesInfo()),
        ChangeNotifierProvider(builder: (context) => VillanosInfo()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
      ),
    );
  }
}
