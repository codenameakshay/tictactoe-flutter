import 'package:flutter/material.dart';

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



