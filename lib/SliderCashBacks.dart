import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

class SliderCashBacks extends StatefulWidget {
  SliderCashBacks();
  @override
  State<StatefulWidget> createState() {
    return SliderCashBacksState();
  }
}

class SliderCashBacksState extends State<SliderCashBacks> {
  SliderCashBacksState();
  List<String> hotCashBacks = [
    "assets/hotcashbacks/File1.jpeg",
    "assets/hotcashbacks/File2.png",
    "assets/hotcashbacks/File3.jpeg",
    "assets/hotcashbacks/File4.jpeg",
    "assets/hotcashbacks/File5.jpeg",
    "assets/hotcashbacks/File6.png",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        viewportFraction: 0.9,
        items: hotCashBacks.map((i) {
          return new Builder(
            builder: (BuildContext context) {
              return new Container(
                width: MediaQuery.of(context).size.width,
                margin: new EdgeInsets.symmetric(horizontal: 3.0),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      alignment: FractionalOffset.topCenter,
                      image: new AssetImage(i),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.blue),
              );
            },
          );
        }).toList(),
        height: MediaQuery.of(context).size.height / 4,
        autoPlay: true);
  }
}
