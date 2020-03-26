import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import './bottompanel.dart';
import './body.dart';
import './titlebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color(0xfff5b002),
          title: TitleBar(),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SlidingUpPanel(
              backdropColor: Color(0xffdedcca),
              parallaxOffset: 0.5,
              backdropTapClosesPanel: true,
              parallaxEnabled: true,
              renderPanelSheet: true,
              color: Color(0xffeb4934),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              minHeight: constraints.maxHeight/11.7333,
              maxHeight: constraints.maxHeight/2.5142,
              margin: EdgeInsets.only(top: constraints.maxHeight/7.039999),
              backdropEnabled: true,
              panel: BottomPanel(),
              body: Body(),
            );
          },
        ),
      ),
    );
  }
}
