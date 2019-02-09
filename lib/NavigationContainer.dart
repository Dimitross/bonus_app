import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationBarState();
  }
}

class NavigationBarState extends State<NavigationBar>{
  double fontSize = 20.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Column(
            children: <Widget>[
              Hero(tag: 'eat',
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.restaurant_menu,
                        size: 60.0,
                      ),
                      radius: 40.0,
                    ),
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.only(top: 12.0),
                child: Text('Eat',
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Hero(tag: 'relax',
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Icon(Icons.beach_access,
                          size: 60.0,
                        ),
                        radius: 40.0,
                      ),
                    ],
                  )
              ),
              Container(
                padding: EdgeInsets.only(top: 12.0),
                child: Text('Relax',
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Hero(tag: 'shop',
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.shopping_basket,
                        size: 60.0,
                      ),
                      radius: 40.0,
                    ),
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.only(top: 12.0),
                child: Text('Shop',
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Hero(tag: 'services',
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.card_travel,
                        size: 60.0,
                      ),
                      radius: 40.0,
                    ),
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.only(top: 12.0),
                child: Text('Services',
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}