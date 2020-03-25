import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import './body.dart';
import './pill.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color(0xffe3a410),
          title: Center(
            child:
                // Container(width: 150, height: 36, child: TICTACTOE())
                Text(
              "Tic-Tac-Toe",
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 40,
                color: Color(0xff050503),
              ),
            ),
          ),
        ),
        body: SlidingUpPanel(
          backdropColor: Color(0xffdedcca),
          parallaxOffset: 1,
          backdropTapClosesPanel: true,
          parallaxEnabled: true,
          renderPanelSheet: true,
          color: Color(0xffeb4934),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          minHeight: 50,
          maxHeight: 260,
          margin: EdgeInsets.only(top: 100),
          backdropEnabled: true,
          panel: Stack(
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
                    Container(margin: EdgeInsets.only(top:10, bottom:20), width: 150, height: 7.5, child: Pill()),
                    // Text(
                    //   "RESET",
                    //   style: TextStyle(
                    //     fontFamily: 'Nunito',
                    //     fontSize: 40,
                    //     color: Color(0xff050503),
                    //   ),
                    // ),
                    Container(
                      width: 400,
                      height: 100,
                      child: Card(),
                    ),
                    Container(
                      width: 400,
                      height: 100,
                      child: Card(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: Center(
            child: Container(
              width: double.infinity,
              height: 800,
              child: Card(
                margin: EdgeInsets.only(
                  bottom: 100,
                ),
                child: Body(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
