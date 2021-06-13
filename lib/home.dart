import 'package:flutter/material.dart';
import 'package:your_beach/titles.dart';
import 'package:your_beach/home.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Titles> titles = [
    Titles(name: 'Crabs', path: 'crab.png'),
    Titles(name: 'Birds', path: 'Bird.png'),
    // Titles(name: 'Dolphins', path: 'fish.png'),
    Titles(name: 'Octopus', path: 'Octopus.png'),
    Titles(name: 'Starfishes', path: 'Starfish.png'),
    Titles(name: 'Shells', path: 'shell.png'),
    Titles(name: 'Dolphins', path: 'Dolphins.png'),
    Titles(name: 'Turtles', path: 'Turtle.png'),
    Titles(name: 'Boats', path: 'Boat.png'),
    Titles(name: 'Sandcastles', path: 'Sandcastle.png'),
    Titles(name: 'Palm Trees', path: 'Palmtrees.png'),
    Titles(name: 'Lighthouses', path: 'Lighthouse.png'),
    Titles(name: 'Beaches', path: 'Beaches.png'),
  ];

  void getIndex(index) {
    Navigator.pushNamed(context, '/info', arguments: {'index': index});
  }

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
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
          child: Card(
            child: ListTile(
              tileColor: Colors.grey[50],
              minVerticalPadding: 28.0,
              onTap: () {
                getIndex(index);
              },
              title: Text(
                titles[index].name,
                style: TextStyle(
                    fontFamily: 'LondrinaSolid',
                    fontSize: 25.0,
                    color: Colors.black,
                    shadows: [
                      Shadow(color: Colors.yellow[200], offset: Offset(2, 2))
                    ]),
              ),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.grey[50],
                backgroundImage: AssetImage('assets/${titles[index].path}'),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/developers');
        },
        child: Icon(
          Icons.info,
          size: 50.0,
          color: Colors.white,
        ),
        backgroundColor: new Color(0xff3f6db4),
      ),
    );
  }
}
