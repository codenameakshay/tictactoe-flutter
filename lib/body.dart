import 'package:flutter/material.dart';
import './grid.dart';
import './bg.dart';

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
