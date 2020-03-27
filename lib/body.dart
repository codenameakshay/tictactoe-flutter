import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import './screenz.dart';
import './screen1.dart';
import './screen2.dart';
import './screend.dart';
import './screenq.dart';

class Body extends StatefulWidget {
  PanelController controller;
  bool isBackButton;
  Function backButtonChange;
  Body({this.controller, this.isBackButton, this.backButtonChange});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var lastPress = "O";
  var screenNumber = 0;

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

  void setBackButton() {
    setState(() {
      widget.isBackButton = (widget.isBackButton) ? false : true;
    });
  }

  void setScreenNumber(int value) {
    screenNumber = value;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isBackButton) {
      screenNumber = 4;
      Future.delayed(Duration.zero, () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(seconds: 1),
            pageBuilder: (_, __, ___) => ScreenQ(
                setBackButton, widget.backButtonChange, setScreenNumber),
          ),
        );
      });
    } else {
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
        screenNumber = 1;
        Future.delayed(Duration.zero, () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              pageBuilder: (_, __, ___) => Screen1(setScreenNumber),
            ),
          );
        });
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
        screenNumber = 2;
        Future.delayed(Duration.zero, () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              pageBuilder: (_, __, ___) => Screen2(setScreenNumber),
            ),
          );
        });
      } else if (enabledButton[0] == 1 &&
          enabledButton[1] == 1 &&
          enabledButton[2] == 1 &&
          enabledButton[3] == 1 &&
          enabledButton[4] == 1 &&
          enabledButton[5] == 1 &&
          enabledButton[6] == 1 &&
          enabledButton[7] == 1 &&
          enabledButton[8] == 1) {
        screenNumber = 3;
        Future.delayed(Duration.zero, () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              pageBuilder: (_, __, ___) => ScreenD(setScreenNumber),
            ),
          );
        });
      } else {
        screenNumber = 0;
      }
    }
    return (screenNumber == 0)
        ? ScreenZ(
            enabledButton,
            crossButton,
            lastButton,
            lastButtonValue,
            setEnabledButton,
            setCrossButton,
            setNoughtButton,
          )
        : (screenNumber == 1)
            ? Screen1(setScreenNumber)
            : (screenNumber == 2)
                ? Screen2(setScreenNumber)
                : (screenNumber == 3)
                    ? ScreenD(setScreenNumber)
                    : ScreenQ(setBackButton, widget.backButtonChange,
                        setScreenNumber);
  }
}
