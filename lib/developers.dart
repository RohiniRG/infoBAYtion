import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Developers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[100],
        appBar: AppBar(
          toolbarHeight: 80.0,
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/img_logo.png',
            fit: BoxFit.fill,
            height: 200,
          ),
          centerTitle: true,
          elevation: 10,
        ),
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
              Text(
                'Meet our team',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'LondrinaSolid',
                    fontSize: 50.0,
                    color: Colors.white,
                    shadows: [
                      Shadow(color: new Color(0xFF3A2DB3), offset: Offset(2, 2))
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 25.0),
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Colors.grey[100],
                  child: SizedBox(
                    width: 350,
                    height: 450,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/pic1.jpg'),
                            radius: 75,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Rohini Rao',
                            style: TextStyle(
                                fontSize: 40,
                                color: new Color(0xFF3A2DB3),
                                shadows: [
                                  Shadow(
                                      color: Colors.yellow[200],
                                      offset: Offset(2, 2))
                                ],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'LondrinaSolid'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                              child: Text(
                                ' Hi! I am Rohini Rao! I love to dance, code and watch movies. I am a python developer, machine learning entusiast and I\'m currently trying my hands on Flutter. \nLet\'s connect!',
                                style: TextStyle(
                                  fontFamily: 'LondrinaSolid',
                                  fontSize: 25,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(
                                  image: NetworkImage(
                                      'https://cdn3.iconfinder.com/data/icons/social-media-circle/512/circle-twitter-512.png',
                                      scale: 13),
                                ),
                              ),
                              Text(
                                ' @roohini_',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 25.0),
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Colors.grey[100],
                  child: SizedBox(
                    width: 350,
                    height: 450,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/Akhil_small.jpeg'),
                            radius: 75,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Akhil Bhalerao',
                            style: TextStyle(
                                fontSize: 40,
                                color: new Color(0xFF3A2DB3),
                                shadows: [
                                  Shadow(
                                      color: Colors.yellow[200],
                                      offset: Offset(2, 2))
                                ],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'LondrinaSolid'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                              child: Text(
                                ' Hi! I am Akhil Bhalerao! I like to click photos, code and learn about crypto. I am a python developer and an active opensource contributor. I\'m currently trying my hands on Flutter. \nLet\'s connect!',
                                style: TextStyle(
                                  fontFamily: 'LondrinaSolid',
                                  fontSize: 25,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(
                                  image: NetworkImage(
                                      'https://cdn3.iconfinder.com/data/icons/social-media-circle/512/circle-twitter-512.png',
                                      scale: 13),
                                ),
                              ),
                              Text(
                                ' @AkhilBhalerao',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
