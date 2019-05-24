import 'package:flutter/material.dart';
import 'package:flutter_provider_app_demo/src/providers/heroesinfo.dart';
import 'package:flutter_provider_app_demo/src/providers/villanosInfo.dart';
import 'package:provider/provider.dart';

class SuperText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        /*Consumer<HeroesInfo>(
          builder: (context, heroesInfo, _) => Text(
                heroesInfo.heroe,
                style: TextStyle(
                  fontSize: 30,
                  color: heroesInfo.colorBase,
                ),
              ),
        ),*/

        Text(
          heroesInfo.heroe,
          style: TextStyle(
            fontSize: 30,
            color: heroesInfo.colorBase,
          ),
        ),
        Text(
          villanosInfo.villano,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
