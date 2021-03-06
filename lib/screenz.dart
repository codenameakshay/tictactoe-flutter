import 'package:flutter/material.dart';
import './grid.dart';
import './bg.dart';
import './gamebutton.dart';

class ScreenZ extends StatefulWidget {
  List enabledButton;
  List crossButton;
  Function lastButton;
  Function lastButtonValue;
  Function setEnabledButton;
  Function setCrossButton;
  Function setNoughtButton;

  ScreenZ(
      this.enabledButton,
      this.crossButton,
      this.lastButton,
      this.lastButtonValue,
      this.setEnabledButton,
      this.setCrossButton,
      this.setNoughtButton);
  @override
  _ScreenZState createState() => _ScreenZState();
}

class _ScreenZState extends State<ScreenZ> {
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
                child: Hero(
                  tag: "card-result",
                  child: AnimatedOpacity(
                    opacity: 1.0,
                    duration: Duration(milliseconds: 500),
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
                                      enabled: widget.enabledButton[index],
                                      cross: widget.crossButton[index],
                                      lbset: widget.lastButton,
                                      lbget: widget.lastButtonValue,
                                      sebv: widget.setEnabledButton,
                                      scbv: widget.setCrossButton,
                                      snbv: widget.setNoughtButton,
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
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
