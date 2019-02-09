import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class SliderCashBacks extends StatefulWidget {
  SliderCashBacks();
  @override
  State<StatefulWidget> createState() {
    return SliderCashBacksState();
  }
}

class SliderCashBacksState extends State<SliderCashBacks> {
  SliderCashBacksState();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      viewportFraction: 0.9,
      items: [1,2,3,4,5].map((i) {
        return new Builder(
          builder: (BuildContext context) {
            return new Container(
              width: MediaQuery.of(context).size.width,
              margin: new EdgeInsets.symmetric(horizontal: 3.0),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.blue
              ),
              child: Center(
                child: new Text('Slide  $i', style: new TextStyle(fontSize: 25.0),),
              )
            );
          },
        );
      }).toList(),
      height: MediaQuery.of(context).size.height / 4,
      autoPlay: true
    );
  }
}