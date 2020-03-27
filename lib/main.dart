import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import './bottompanel.dart';
import './body.dart';
import './titlebar.dart';

var controller = PanelController();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isBackButton = false;
  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
    var isBackButton = false;
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

  bool myInterceptor(bool stopDefaultButtonEvent) {
    print("BACK BUTTON!"); // Do some stuff.
    setState(() {
      isBackButton = true;
    });
    return true;
  }

  void backButtonChange() {
    setState(() {
      isBackButton = isBackButton ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Future<bool> _onBackPressed() {
    //   return showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         title: Text('Do you really want to exit the app?'),
    //         actions: <Widget>[
    //           FlatButton(
    //             onPressed: () => Navigator.pop(context, false),
    //             child: Text('No'),
    //           ),
    //           FlatButton(
    //             onPressed: () => Navigator.pop(context, true),
    //             child: Text('Yes'),
    //           ),
    //         ],
    //       );
    //     },
    //   );
    // }

    return MaterialApp(
      home:
          // WillPopScope(
          //   onWillPop: _onBackPressed,
          //   child:
          Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color(0xfff5b002),
          title: TitleBar(),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SlidingUpPanel(
              controller: controller,
              backdropColor: Color(0xffdedcca),
              parallaxOffset: 0.5,
              backdropTapClosesPanel: true,
              parallaxEnabled: true,
              renderPanelSheet: true,
              color: Color(0xffeb4934),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              minHeight: constraints.maxHeight / 11.7333,
              maxHeight: constraints.maxHeight / 2.5142,
              margin: EdgeInsets.only(top: constraints.maxHeight / 7.039999),
              backdropEnabled: true,
              panel: BottomPanel(controller: controller),
              body: Body(
                  controller: controller,
                  isBackButton: isBackButton,
                  backButtonChange: backButtonChange),
            );
          },
        ),
        // ),
      ),
    );
  }
}
