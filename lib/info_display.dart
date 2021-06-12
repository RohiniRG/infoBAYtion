import 'package:flutter/material.dart';
import 'package:your_beach/temp.dart';
import 'package:your_beach/home.dart';

class InfoDisplay extends StatefulWidget {
  @override
  _InfoDisplayState createState() => _InfoDisplayState();
}

class _InfoDisplayState extends State<InfoDisplay> {
  @override
  Widget build(BuildContext context) {
    final routes =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
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
        margin: EdgeInsets.symmetric(vertical: 20.0),
        // height: .0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 0.0),
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.grey[100],
                child: SizedBox(
                  width: 350,
                  height: 550,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 350,
                          decoration: BoxDecoration(
                              // image: DecorationImage(image: AssetImage('assets/Thumbnail.png'), fit: BoxFit.fill),
                              border: Border.all(
                                  color: new Color(0xffffde59), width: 5),
                              shape: BoxShape.rectangle),
                          // Img path
                          child: Image(
                              image: AssetImage('assets/AtlanticRC.jpg'),
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          height: 10,
                        ), 
                        Text(
                          details[routes['index']][0][0],
                          style: TextStyle(
                              fontSize: 35,
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
                          height: 20,
                        ),
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                            child: Text(
                              '\u2022 ${details[routes['index']][0][2]}' +
                              '\n\n\u2022 ${details[routes['index']][0][3]}' +
                              '\n\n\u2022 ${details[routes['index']][0][4]}',
                              style: TextStyle(
                                fontFamily: 'LondrinaSolid',
                                fontSize: 19,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ), 
                  ), 
                ), 
              ),
            ), 
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 0.0),
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.grey[100],
                child: SizedBox(
                  width: 350,
                  height: 550,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 350,
                          decoration: BoxDecoration(
                              // image: DecorationImage(image: AssetImage('assets/Thumbnail.png'), fit: BoxFit.fill),
                              border: Border.all(
                                  color: new Color(0xffffde59), width: 5),
                              shape: BoxShape.rectangle),
                          // Img path
                          child: Image(
                              image: AssetImage('assets/AtlanticRC.jpg'),
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          // Title
                          details[routes['index']][1][0],
                          style: TextStyle(
                              fontSize: 35,
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
                          height: 20,
                        ),
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                            child: Text(
                              '\u2022 ${details[routes['index']][1][2]}' +
                              '\n\n\u2022 ${details[routes['index']][1][3]}' +
                              '\n\n\u2022 ${details[routes['index']][1][4]}',
                              style: TextStyle(
                                fontFamily: 'LondrinaSolid',
                                fontSize: 19,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                        ),

                        // ListView()
                        // SizedBox(
                        //   height: 10,
                        // ), //SizedBox
                        // SizedBox(
                        //   width: 80,
                        // ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ), //Card
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.grey[100],
                child: SizedBox(
                  width: 350,
                  height: 550,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 350,
                          decoration: BoxDecoration(
                              // image: DecorationImage(image: AssetImage('assets/Thumbnail.png'), fit: BoxFit.fill),
                              border: Border.all(
                                  color: new Color(0xffffde59), width: 5),
                              shape: BoxShape.rectangle),
                          // Img path
                          child: Image(
                              image: AssetImage('assets/AtlanticRC.jpg'),
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          // Title
                          details[routes['index']][2][0],
                          style: TextStyle(
                              fontSize: 35,
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
                          height: 20,
                        ),
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                            child: Text(
                              '\u2022 ${details[routes['index']][2][2]}' +
                              '\n\n\u2022 ${details[routes['index']][2][3]}' +
                              '\n\n\u2022 ${details[routes['index']][2][4]}',
                              style: TextStyle(
                                fontFamily: 'LondrinaSolid',
                                fontSize: 19,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                        ),

                        // ListView()
                        // SizedBox(
                        //   height: 10,
                        // ), //SizedBox
                        // SizedBox(
                        //   width: 80,
                        // ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
          ],
        ),
      ),
    );
  }
}
