import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationBarState();
  }
}

class NavigationBarState extends State<NavigationBar> {
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
          navigationHero(Icons.restaurant_menu, 'Eat', 20.0, 40.0),
          navigationHero(Icons.beach_access, 'Relax', 20.0, 40.0),
          navigationHero(Icons.shopping_basket, 'Shop', 20.0, 40.0),
          navigationHero(Icons.card_travel, 'Services', 20.0, 40.0),
        ],
      ),
    );
  }
}

navigationHero(icon, label, fontSize, radius){
  return Column(
      children: <Widget>[
        Hero(
            tag: label,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(radius)),
                      border: Border.all(width: 2.0, color: Colors.black54)),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      icon,
                      size: radius * 1.5,
                      color: Colors.black87,
                    ),
                    radius: radius,
                  ),
                )
              ],
            )),
        Container(
          padding: EdgeInsets.only(top: 12.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: fontSize,
            ),
          ),
        )
      ],
  );
}
