import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart';
import './grid.dart';
import './bg.dart';
import './gamebutton.dart';

class Body extends StatefulWidget {
  PanelController controller;
  Body({this.controller});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var lastPress = "O";

  List enabledButton = [0, 0, 0, 0, 0, 0, 0, 0, 0];

  List crossButton = [0, 0, 0, 0, 0, 0, 0, 0, 0];

  List noughtButton = [0, 0, 0, 0, 0, 0, 0, 0, 0];

  void lastButton(var value) {
    this.lastPress = value;
  }

  String lastButtonValue() {
    return this.lastPress;
  }

  void setEnabledButton(int index) {
    setState(() {
      this.enabledButton[index] = (this.enabledButton[index] == 0) ? 1 : 0;
    });
  }

  void setCrossButton(int index) {
    setState(() {
      this.crossButton[index] = (this.crossButton[index] == 0) ? 1 : 0;
    });
  }

  void setNoughtButton(int index) {
    setState(() {
      this.noughtButton[index] = (this.noughtButton[index] == 0) ? 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;
    if ((enabledButton[0] == 1 &&
            enabledButton[1] == 1 &&
            enabledButton[2] == 1 &&
            crossButton[0] == 1 &&
            crossButton[1] == 1 &&
            crossButton[2] == 1) ||
        (enabledButton[3] == 1 &&
            enabledButton[4] == 1 &&
            enabledButton[5] == 1 &&
            crossButton[3] == 1 &&
            crossButton[4] == 1 &&
            crossButton[5] == 1) ||
        (enabledButton[6] == 1 &&
            enabledButton[7] == 1 &&
            enabledButton[8] == 1 &&
            crossButton[6] == 1 &&
            crossButton[7] == 1 &&
            crossButton[8] == 1) ||
        (enabledButton[0] == 1 &&
            enabledButton[3] == 1 &&
            enabledButton[6] == 1 &&
            crossButton[0] == 1 &&
            crossButton[3] == 1 &&
            crossButton[6] == 1) ||
        (enabledButton[1] == 1 &&
            enabledButton[4] == 1 &&
            enabledButton[7] == 1 &&
            crossButton[1] == 1 &&
            crossButton[4] == 1 &&
            crossButton[7] == 1) ||
        (enabledButton[2] == 1 &&
            enabledButton[5] == 1 &&
            enabledButton[8] == 1 &&
            crossButton[2] == 1 &&
            crossButton[5] == 1 &&
            crossButton[8] == 1) ||
        (enabledButton[0] == 1 &&
            enabledButton[4] == 1 &&
            enabledButton[8] == 1 &&
            crossButton[0] == 1 &&
            crossButton[4] == 1 &&
            crossButton[8] == 1) ||
        (enabledButton[2] == 1 &&
            enabledButton[4] == 1 &&
            enabledButton[6] == 1 &&
            crossButton[2] == 1 &&
            crossButton[4] == 1 &&
            crossButton[6] == 1)) {
      screen = LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          widget.controller.animatePanelToPosition(1);
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
                                vertical: constraints.maxHeight / 15.67777,
                                horizontal: constraints.maxWidth / 15.99999),
                            width: constraints.maxWidth / 0.99999,
                            height: constraints.maxWidth / 0.83888,
                            child: Center(
                                child: Text(
                              'Player 1 Won!',
                              style: TextStyle(fontSize: 20),
                            )),
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
    } else if ((enabledButton[0] == 1 &&
            enabledButton[1] == 1 &&
            enabledButton[2] == 1 &&
            noughtButton[0] == 1 &&
            noughtButton[1] == 1 &&
            noughtButton[2] == 1) ||
        (enabledButton[3] == 1 &&
            enabledButton[4] == 1 &&
            enabledButton[5] == 1 &&
            noughtButton[3] == 1 &&
            noughtButton[4] == 1 &&
            noughtButton[5] == 1) ||
        (enabledButton[6] == 1 &&
            enabledButton[7] == 1 &&
            enabledButton[8] == 1 &&
            noughtButton[6] == 1 &&
            noughtButton[7] == 1 &&
            noughtButton[8] == 1) ||
        (enabledButton[0] == 1 &&
            enabledButton[3] == 1 &&
            enabledButton[6] == 1 &&
            noughtButton[0] == 1 &&
            noughtButton[3] == 1 &&
            noughtButton[6] == 1) ||
        (enabledButton[1] == 1 &&
            enabledButton[4] == 1 &&
            enabledButton[7] == 1 &&
            noughtButton[1] == 1 &&
            noughtButton[4] == 1 &&
            noughtButton[7] == 1) ||
        (enabledButton[2] == 1 &&
            enabledButton[5] == 1 &&
            enabledButton[8] == 1 &&
            noughtButton[2] == 1 &&
            noughtButton[5] == 1 &&
            noughtButton[8] == 1) ||
        (enabledButton[0] == 1 &&
            enabledButton[4] == 1 &&
            enabledButton[8] == 1 &&
            noughtButton[0] == 1 &&
            noughtButton[4] == 1 &&
            noughtButton[8] == 1) ||
        (enabledButton[2] == 1 &&
            enabledButton[4] == 1 &&
            enabledButton[6] == 1 &&
            noughtButton[2] == 1 &&
            noughtButton[4] == 1 &&
            noughtButton[6] == 1)) {
      screen = LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          widget.controller.animatePanelToPosition(1);
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
                                vertical: constraints.maxHeight / 15.67777,
                                horizontal: constraints.maxWidth / 15.99999),
                            width: constraints.maxWidth / 0.99999,
                            height: constraints.maxWidth / 0.83888,
                            child: Center(
                                child: Text(
                              'Player 2 Won!',
                              style: TextStyle(fontSize: 20),
                            )),
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
    } else if (enabledButton[0] == 1 &&
        enabledButton[1] == 1 &&
        enabledButton[2] == 1 &&
        enabledButton[3] == 1 &&
        enabledButton[4] == 1 &&
        enabledButton[5] == 1 &&
        enabledButton[6] == 1 &&
        enabledButton[7] == 1 &&
        enabledButton[8] == 1) {
      screen = LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          widget.controller.animatePanelToPosition(1);
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
                                vertical: constraints.maxHeight / 15.67777,
                                horizontal: constraints.maxWidth / 15.99999),
                            width: constraints.maxWidth / 0.99999,
                            height: constraints.maxWidth / 0.83888,
                            child: Center(
                                child: Text(
                              'Match Draw',
                              style: TextStyle(fontSize: 20),
                            )),
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
    } else {
      screen = LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
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
                    top: constraints.maxHeight / 7.83888,
                    left: constraints.maxWidth / 19.9995,
                    bottom: constraints.maxHeight / 11.1984,
                  ),
                  width: constraints.maxWidth / 1.05262,
                  height: constraints.maxHeight / 1.30648,
                  child: Hero(
                    tag: "card-result",
                    child: Card(
                      color: Color(0xffe5e5e5),
                      elevation: 10,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: constraints.maxHeight / 15.67777,
                                horizontal: constraints.maxWidth / 15.99999),
                            width: constraints.maxWidth / 0.99999,
                            height: constraints.maxWidth / 0.83888,
                            child: Grid(),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: constraints.maxHeight / 13.67777,
                                horizontal: constraints.maxWidth / 15.99999),
                            child: GridView.count(
                              crossAxisCount: 3,
                              children: List.generate(
                                9,
                                (index) {
                                  return Container(
                                    padding: EdgeInsets.all(
                                        constraints.maxWidth / 24),
                                    child: GameButton(
                                      id: index,
                                      text: '',
                                      enabled: enabledButton[index],
                                      cross: crossButton[index],
                                      lbset: lastButton,
                                      lbget: lastButtonValue,
                                      sebv: setEnabledButton,
                                      scbv: setCrossButton,
                                      snbv: setNoughtButton,
                                    ),
                                  );
                                },
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
    return screen;
  }
}
