import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Novetly extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NovetlyState();
  }
}

class NovetlyState extends State<Novetly> {
  ScrollController _controller;
  List<String> novetlyList = [
    "assets/novelty/File1.jpg",
    "assets/novelty/File2.jpg",
    "assets/novelty/File3.jpeg",
    "assets/novelty/File4.jpg",
    "assets/novelty/File5.jpg",
    "assets/novelty/File6.jpg",
    "assets/novelty/File7.jpg",
    "assets/novelty/File9.jpg",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20.0),
          child: Row(
            children: <Widget>[
              Text(
                'Novetly',
                style: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          child: ListView.builder(
            padding: EdgeInsets.all(20.0),
            controller: _controller,
            itemCount: novetlyList.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[NovetlyCard(novetlyList[index]), Divider()],
              );
            },
          ),
        )
      ],
    );
  }
}

class NovetlyCard extends StatelessWidget {
  String picPath;

  NovetlyCard(this.picPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        image: new DecorationImage(
          fit: BoxFit.cover,
          alignment: FractionalOffset.topCenter,
          image: new AssetImage(picPath),
        ),
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
  }
}
