import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {
  String _heroe = 'Capitán América';
  Color colorBase = Colors.blue;

  get heroe {
    return _heroe;
  }

  set heroe(String nombe) {
    this._heroe = nombe;

    this.colorBase = (nombe == 'Iron Man') ? Colors.red : Colors.blue;

    notifyListeners();
  }
}
