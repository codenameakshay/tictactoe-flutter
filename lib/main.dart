import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import './bg.dart';
import './pill.dart';
import './grid.dart';

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
          backgroundColor: Color(0xfff5b002),
          title: TitleBar(),
        ),
        body: SlidingUpPanel(
          backdropColor: Color(0xffdedcca),
          parallaxOffset: 1,
          backdropTapClosesPanel: true,
          parallaxEnabled: true,
          renderPanelSheet: true,
          color: Color(0xffeb4934),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          minHeight: 60,
          maxHeight: 280,
          margin: EdgeInsets.only(top: 100),
          backdropEnabled: true,
          panel: BottomPanel(),
          body: Body(),
        ),
      ),
    );
  }
}

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Text(
        "Tic-Tac-Toe",
        style: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 40,
          color: Color(0xff050503),
        ),
      ),
    );
  }
}

class BottomPanel extends StatelessWidget {
  const BottomPanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  width: 150,
                  height: 7.5,
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
                width: 400,
                height: 100,
                child: Card(
                  elevation: 10,
                ),
              ),
              Container(
                width: 400,
                height: 100,
                child: Card(
                  elevation: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 800,
            child: Card(
              margin: EdgeInsets.only(
                bottom: 100,
              ),
              child: RotatedBox(quarterTurns: 2, child: BG()),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 100, left: 20, bottom: 70),
            width: 380,
            height: 600,
            child: Card(
              elevation: 10,
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
                  width: 200,
                  height: 100,
                  child: Grid()),
            ),
          )
        ],
      ),
    );
  }
}
