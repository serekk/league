import 'package:flutter/material.dart';
import 'dart:convert' show utf8;

class ChampionDetailOverview extends StatelessWidget {
  var championDetailsData;

  ChampionDetailOverview(this.championDetailsData);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Hero(
            tag: championDetailsData.id,
            child: new Image.network(
              'http://ddragon.leagueoflegends.com/cdn/img/champion/splash/' +
                  championDetailsData.id +
                  '_0.jpg',
            ),
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text(championDetailsData.blurb)),
        ],
      ),
    );
  }
}
