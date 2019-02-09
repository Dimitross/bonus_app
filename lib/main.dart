import 'package:bonus_app/NavigationContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bonus_app/SliderCashBacks.dart';
import 'package:bonus_app/Novelty.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.pin_drop,
                    size: 40.0,
                    color: Colors.black87,
                  ),
                  Text('Minsk',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.search,
                    size: 40.0,
                    color: Colors.black87,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
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
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        onPressed: () => {},
        elevation: 2,
        backgroundColor: Colors.pink,
        //foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.home,size: 35.0,color: Colors.black54,),
            Icon(Icons.watch_later,size: 35.0,color: Colors.black54,),
            Icon(Icons.mail,size: 35.0,color: Colors.black54,),
            Icon(Icons.account_circle,size: 35.0,color: Colors.black54,)
          ],
        ),
      )
    );
  }
}
