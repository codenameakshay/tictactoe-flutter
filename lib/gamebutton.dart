import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GameButton extends StatefulWidget {
  final id;
  String text;
  Color bg;
  int enabled;
  int cross;
  Function lbset;
  Function lbget;
  Function sebv;
  Function scbv;
  Function snbv;

  GameButton({
    this.id,
    this.text = "",
    this.bg = const Color(0xffe5e5e5),
    this.enabled = 0,
    this.cross = 0,
    this.lbset,
    this.lbget,
    this.sebv,
    this.scbv,
    this.snbv,
  });

  @override
  _GameButtonState createState() => _GameButtonState();
}

class _GameButtonState extends State<GameButton> {
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget.enabled == 1 ? 1.0 : 0.0,
      duration: Duration(milliseconds: 500),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: widget.enabled == 1
            ? (widget.cross == 1 ? Color(0xffeb4934) : Color(0xffe3a410))
            : widget.bg,
        elevation: 0,
        child: widget.enabled == 1
            ? (widget.cross == 1 ? Text('X') : Text('O'))
            : Text(widget.text),
        onPressed: () {
          HapticFeedback.vibrate();
          setState(() {
            if (widget.lbget() == "X") {
              if (widget.enabled == 1 && widget.cross == 1) {
                widget.enabled = 1;
                widget.cross = 1;
                widget.lbset("X");
              } else if (widget.enabled == 1 && widget.cross == 0) {
                widget.enabled = 1;
                widget.cross = 0;
                widget.lbset("X");
              } else if (widget.enabled == 0 && widget.cross == 1) {
                widget.enabled = 1;
                widget.cross = 0;
                widget.lbset("O");
                widget.sebv(widget.id);
                widget.snbv(widget.id);
              } else {
                widget.enabled = 1;
                widget.cross = 0;
                widget.lbset("O");
                widget.sebv(widget.id);
                widget.snbv(widget.id);
              }
            } else if (widget.lbget() == "O") {
              if (widget.enabled == 1 && widget.cross == 1) {
                widget.enabled = 1;
                widget.cross = 1;
                widget.lbset("O");
              } else if (widget.enabled == 1 && widget.cross == 0) {
                widget.enabled = 1;
                widget.cross = 0;
                widget.lbset("O");
              } else if (widget.enabled == 0 && widget.cross == 1) {
                widget.enabled = 1;
                widget.cross = 1;
                widget.lbset("X");
                widget.sebv(widget.id);
                widget.scbv(widget.id);
              } else {
                widget.enabled = 1;
                widget.cross = 1;
                widget.lbset("X");
                widget.sebv(widget.id);
                widget.scbv(widget.id);
              }
            }
          });
        },
      ),
    );
  }
}
