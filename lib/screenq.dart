import 'package:flutter/material.dart';
import './bg.dart';
import 'dart:io';

class ScreenQ extends StatefulWidget {
  Function func1;
  Function func2;
  Function setScreenNumber;
  ScreenQ(this.func1, this.func2, this.setScreenNumber);
  @override
  _ScreenQState createState() => _ScreenQState();
}

class _ScreenQState extends State<ScreenQ> {
  @override
  Widget build(BuildContext context) {
    widget.setScreenNumber(0);
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
                              vertical: constraints.maxHeight / 55.67777,
                              horizontal: constraints.maxWidth / 15.99999),
                          width: constraints.maxWidth / 0.99999,
                          height: constraints.maxWidth / 0.83888,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Do you want to quit?',
                                  style: TextStyle(
                                      fontSize: 20, fontFamily: "Nunito"),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            side: BorderSide()),
                                        onPressed: () {
                                          widget.func1();
                                          widget.func2();
                                        },
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "IBM Plex Sans",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            side: BorderSide()),
                                        onPressed: () {
                                          exit(0);
                                        },
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: "IBM Plex Sans",
                                              color: Color(0xffeb4934)),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
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
