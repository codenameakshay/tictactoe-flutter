import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import './bg.dart';
import './bottompanel.dart';

var controller = PanelController();

class Screen1 extends StatefulWidget {
  Function setScreenNumber;
  Screen1(this.setScreenNumber);
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    AudioCache player = AudioCache();
    player.play('sound/Win.mp3');
    widget.setScreenNumber(0);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SlidingUpPanel(
          defaultPanelState: PanelState.OPEN,
          controller: controller,
          backdropColor: Color(0xffdedcca),
          parallaxOffset: 0.5,
          backdropTapClosesPanel: true,
          parallaxEnabled: true,
          renderPanelSheet: true,
          color: Color(0xffeb4934),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          minHeight: constraints.maxHeight / 11.7333,
          maxHeight: constraints.maxHeight / 2.5142,
          margin: EdgeInsets.only(top: constraints.maxHeight / 7.039999),
          backdropEnabled: true,
          panel: BottomPanel(controller: controller),
          body:
              // AudioCache player = AudioCache();
              // player.play('sound/Win.mp3');

              Center(
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
                                    'Player 1 Won!',
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
          ),
        );
      },
    );
  }
}
