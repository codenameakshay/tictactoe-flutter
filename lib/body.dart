import 'package:flutter/material.dart';
import './grid.dart';
import './bg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
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
                child: Card(
                  color: Color(0xffe5e5e5),
                  elevation: 10,
                  child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: constraints.maxHeight / 15.67777,
                          horizontal: constraints.maxWidth / 15.99999),
                      width: constraints.maxWidth / 1.99999,
                      height: constraints.maxWidth / 7.83888,
                      child: Grid()),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
