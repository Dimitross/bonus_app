import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Novetly extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NovetlyState();
  }
}

class NovetlyState extends State<Novetly>{
  ScrollController _controller;
  List<int> novetlyList = [1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9];

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
              Text('Novetly',
                style: TextStyle(
                    fontSize: 55.0,
                    fontWeight: FontWeight.bold
                ),
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
            itemBuilder: (BuildContext context, int index){
              return Column(
                children: <Widget>[
                  NovetlyCard(),
                  Divider()
                ],
              );
            },
          ),
        )
      ] ,
    );
  }
}

class NovetlyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
  }
}
