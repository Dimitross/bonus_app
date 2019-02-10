import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 12.0,
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: InkWell(
                  //child: Icon(Icons.home,size: 35.0,color: Colors.black54),
                  onTap: () {},
                  child: Icon(CupertinoIcons.home,
                      size: 45.0, color: Colors.black54),
                ),
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
              ),
              Container(
                child: InkWell(
                  //child: Icon(Icons.watch_later,size: 35.0,color: Colors.black54),
                  child: Icon(CupertinoIcons.time,
                      size: 45.0, color: Colors.black54),
                  onTap: () {},
                ),
                padding: EdgeInsets.only(left: 20.0, right: 40.0),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: InkWell(
                  //child: Icon(Icons.mail,size: 35.0,color: Colors.black54),
                  child: Icon(CupertinoIcons.mail,
                      size: 45.0, color: Colors.black54),
                  onTap: () {},
                ),
                padding: EdgeInsets.only(left: 40.0, right: 20.0),
              ),
              Container(
                child: InkWell(
                  //child: Icon(Icons.account_circle,size: 35.0,color: Colors.black54),
                  child: Icon(CupertinoIcons.profile_circled,
                      size: 45.0, color: Colors.black54),
                  onTap: () {},
                ),
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
              )
            ],
          )
        ],
      ),
    ));
  }
}
