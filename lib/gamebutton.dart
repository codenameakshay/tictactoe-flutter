import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GameButton extends StatefulWidget {
  final id;
  String text;
  Color bg;
  bool enabled;
  bool cross;

  GameButton(
      {this.id,
      this.text = "",
      this.bg = const Color(0xffe5e5e5),
      this.enabled = true,
      this.cross = true});

  @override
  _GameButtonState createState() => _GameButtonState();
}

class _GameButtonState extends State<GameButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: widget.enabled
          ? (widget.cross ? Color(0xffeb4934) : Color(0xffe3a410))
          : widget.bg,
      elevation: 0,
      child: widget.enabled
          ? (widget.cross ? Text('X') : Text('O'))
          : Text(widget.text),
      onPressed: () {
        print(widget.id);
        HapticFeedback.vibrate();
        setState(() {
          if (widget.enabled && widget.cross) {
            widget.cross = false;
          } else if (widget.enabled && !widget.cross) {
            widget.enabled = false;
          } else if (!widget.enabled && widget.cross) {
            widget.enabled = true;
          } else {
            widget.enabled = true;
            widget.cross = true;
          }
        });
      },
    );
  }
}
