import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

newAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.pin_drop,
                size: 40.0,
                color: Colors.black87,
              ),
              Text(
                'Minsk',
                style: TextStyle(
                  color: Colors.black87,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.search,
                size: 40.0,
                color: Colors.black87,
              )
            ],
          )
        ],
      ),
    ),
  );
}
