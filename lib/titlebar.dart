import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Center(
          child: Text(
            "Tic-Tac-Toe",
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 14719.9996/constraints.maxWidth,
              color: Color(0xff050503),
            ),
          ),
        );
      },
    );
  }
}
