import 'package:flutter/material.dart';
import 'package:tictactoe/main.dart';
import './pill.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:io';
import 'dart:async';

class BottomPanel extends StatelessWidget {
  PanelController controller;
  BottomPanel({this.controller});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
                left: 10,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 15, bottom: 35),
                      width: constraints.maxWidth / 2.6666,
                      height: constraints.maxHeight / 37.3346,
                      child: Pill()),
                  // Text(
                  //   "RESET",
                  //   style: TextStyle(
                  //     fontFamily: 'Nunito',
                  //     fontSize: 40,
                  //     color: Color(0xff050503),
                  //   ),
                  // ),
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight / 2.8,
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: ListTile(
                          onTap: () {
                            AudioCache player = AudioCache();
                            player.play('sound/Restart.mp3');

                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(seconds: 1),
                                pageBuilder: (_, __, ___) => MyApp(),
                              ),
                            );
                          },
                          leading: Icon(
                            Icons.refresh,
                            size: 30,
                            color: Color(0xffeb4934),
                          ),
                          title: Text(
                            'Restart',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xffeb4934),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight / 2.8,
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: ListTile(
                          onTap: () {
                            exit(0);
                          },
                          leading: Icon(
                            Icons.exit_to_app,
                            size: 30,
                            color: Color(0xffeb4934),
                          ),
                          title: Text(
                            'Exit',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xffeb4934),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
