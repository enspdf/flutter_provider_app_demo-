import 'package:flutter/material.dart';
import 'package:flutter_provider_app_demo/src/providers/heroesinfo.dart';
import 'package:flutter_provider_app_demo/src/providers/villanosInfo.dart';
import 'package:provider/provider.dart';

class SuperFloatingAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.access_time),
          backgroundColor: Colors.red,
          onPressed: () {
            heroesInfo.heroe = 'Iron Man';
            villanosInfo.villano = 'El Mandarín';
          },
        ),
        SizedBox(height: 10),
        FloatingActionButton(
          child: Icon(Icons.category),
          backgroundColor: Colors.blue,
          onPressed: () {
            heroesInfo.heroe = 'Capitán América';
            villanosInfo.villano = 'Red Skull';
          },
        )
      ],
    );
  }
}
