import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import './bg.dart';
import 'dart:async';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    AudioCache player = AudioCache();
    player.play('sound/Win.mp3');
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Toast.show("Swipe up on pill for options", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

        return Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight / 0.97986,
                child: Card(
                  margin: EdgeInsets.only(
                    bottom: constraints.maxHeight / 7.83888,
                  ),
                  child: RotatedBox(quarterTurns: 2, child: BG()),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: constraints.maxHeight / 2.83888,
                  left: constraints.maxWidth / 6.9995,
                  right: constraints.maxWidth / 100.9995,
                  bottom: constraints.maxHeight / 1051.1984,
                ),
                width: constraints.maxWidth / 1.15262,
                height: constraints.maxHeight / 1.90648,
                child: Hero(
                  tag: "card-result",
                  child: Card(
                    color: Color(0xffe5e5e5),
                    elevation: 10,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: constraints.maxHeight / 20.67777,
                              horizontal: constraints.maxWidth / 15.99999),
                          width: constraints.maxWidth / 0.99999,
                          height: constraints.maxWidth / 0.83888,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Player 2 Won!',
                                  style: TextStyle(
                                      fontSize: 20, fontFamily: "Nunito"),
                                ),
                                Text(
                                  'Swipe up for restart',
                                  style: TextStyle(
                                      fontSize: 10, fontFamily: "Nunito"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
