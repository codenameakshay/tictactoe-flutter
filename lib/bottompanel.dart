import 'package:flutter/material.dart';
import './pill.dart';


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