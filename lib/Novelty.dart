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

  List<String> merchantsLogo = [
    "assets/logos/cinemawolrd.png",
    "assets/logos/englishcenter.png",
    "assets/logos/autoservice.png",
    "assets/logos/sportmaster.png",
    "assets/logos/barber.png",
    "assets/logos/italiano_pizza.jpg",
    "assets/logos/Hinkali.png",
    "assets/logos/ukrfood.png",
  ];

  List<String> merchantsName = [
    "Cinema World",
    "English Center",
    "Auto Service",
    "SportMaster",
    "Wayne",
    "Italiano Pizza",
    "Hinkali",
    "Budmo",
  ];

  int cashbackPercent = 25;

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
                children: <Widget>[
                  NovetlyCard(merchantsName[index], merchantsLogo[index], novetlyList[index],cashbackPercent),
                  Divider()],
              );
            },
          ),
        )
      ],
    );
  }
}

class NovetlyCard extends StatelessWidget {
  String merchantName, merchantLogo, picNovetly;
  int cashbackPercent;
  NovetlyCard(this.merchantName, this.merchantLogo, this.picNovetly, this.cashbackPercent);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      child: Stack(
        children: <Widget>[
          Positioned(
            right: 0.0,
            child: Container(
              padding: EdgeInsets.all(6.0),
              child: FeedbackVotes(700,300),
            )
          ),
          Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Container(
                width: 130.0,
                height: 30.0,
                //padding: EdgeInsets.only(right: ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(25.0))
                ),
                child: Center(
                  child: Text("CashBack $cashbackPercent%",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                )
              )
          ),
          Positioned(
              child: Container(
                padding: EdgeInsets.all(6.0),
                child: Column(
                  children: <Widget>[
                    Hero(
                        tag: merchantName,
                        child: Column(
                          children: <Widget>[
                            Container(
//                              decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.all(Radius.circular(radius)),
//                                  border: Border.all(width: 2.0, color: Colors.black54)),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset(merchantLogo),
                                radius: 45.0,
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Text(
                        merchantName,
                        style: TextStyle(
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                color: Colors.black87,
                                offset: Offset(-1, -1),
                              ),
                              Shadow(
                                color: Colors.black87,
                                offset: Offset(1, -1),
                              ),
                              Shadow(
                                color: Colors.black87,
                                offset: Offset(1, 1),
                              ),
                              Shadow(
                                color: Colors.black87,
                                offset: Offset(-1, 1),
                              )
                            ]
                        ),
                      ),
                    )
                  ],
                ),
              )
          )
        ],
      ),
      decoration: BoxDecoration(
        image: new DecorationImage(
          fit: BoxFit.cover,
          alignment: FractionalOffset.topCenter,
          image: new AssetImage(picNovetly),
        ),
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
  }
}

class FeedbackVotes extends StatelessWidget{
  final int good, bad;
  List<Widget> starsList = <Widget>[];
  FeedbackVotes(this.good, this.bad);
  int overallFeedbacks;

  calculateStars(){
    overallFeedbacks = good+bad;
    double oneStar = overallFeedbacks / 5;
    int plusStars = good ~/ oneStar;
    double remainder = good / oneStar - plusStars;
    for (int count = 0;count < plusStars; count++){
      starsList.add(Icon(Icons.star,color: Colors.orangeAccent,));
    }
    if (remainder >= 0.5){
      starsList.add(Icon(Icons.star_half,color: Colors.orangeAccent,));
    }
    int minusStars = 5 - starsList.length;
    for (int count = 0;count < minusStars; count++){
      starsList.add(Icon(Icons.star_border,color: Colors.orangeAccent,));
    }
  }

  @override
  Widget build(BuildContext context) {
    calculateStars();
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: starsList
          ),
          Row(
            children: <Widget>[
              Text('$overallFeedbacks feedbacks',
                style: TextStyle(
                  color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black87,
                        offset: Offset(-1, -1),
                      ),
                      Shadow(
                        color: Colors.black87,
                        offset: Offset(1, -1),
                      ),
                      Shadow(
                        color: Colors.black87,
                        offset: Offset(1, 1),
                      ),
                      Shadow(
                        color: Colors.black87,
                        offset: Offset(-1, 1),
                      )
                    ]
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}