import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import './bg.dart';
import 'dart:io';
import 'dart:async';

class ScreenD extends StatefulWidget {
  @override
  _ScreenDState createState() => _ScreenDState();
}

class _ScreenDState extends State<ScreenD> {
  @override
  Widget build(BuildContext context) {
    AudioCache player = AudioCache();
    player.play('sound/Draw.mp3');
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // widget.controller.animatePanelToPosition(1);

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
                                  'Match Draw!',
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
