import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bonus_app/NavigationContainer.dart';
import 'package:bonus_app/SliderCashBacks.dart';
import 'package:bonus_app/Novelty.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bonus_app/NewBottomAppBar.dart';
import 'package:bonus_app/NewAppBar.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartScreenState();
  }
}
class StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: newAppBar(),
        body: Container(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: SliderCashBacks(),
                  ),
                  NavigationBar(),
                  Novetly(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: NewBottomAppBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: new FloatingActionButton(
          onPressed: () => {},
          elevation: 2,
          backgroundColor: Colors.red,
          //foregroundColor: Colors.white,
          child: SvgPicture.asset(
            'assets/qrcode.svg',
            semanticsLabel: 'Scan QRCode',
            height: 100.0,
            width: 100.0,
            fit: BoxFit.cover,
            color: Colors.black87,
            allowDrawingOutsideViewBox: true,
          ),
        ));
  }
}
