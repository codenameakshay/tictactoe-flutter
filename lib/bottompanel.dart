import 'package:flutter/material.dart';
import './pill.dart';

class BottomPanel extends StatelessWidget {
  const BottomPanel({
    Key key,
  }) : super(key: key);

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
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight / 2.8,
                    child: Card(
                      elevation: 10,
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
