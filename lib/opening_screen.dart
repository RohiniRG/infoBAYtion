import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Opening extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    Color mainColor = Color(0xff76cccf);
    Color textColor = Color(0xFF3A2DB3);

    return Scaffold(
        backgroundColor: Colors.cyan[100],
        // appBar: AppBar(
        //   backgroundColor: mainColor,
        //   elevation: 0.0,
        // ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: size.height * 0.3,
                decoration: BoxDecoration(
                    color: Color(0xFF76cccf),
                    image: DecorationImage(
                        image: AssetImage('assets/Thumbnail.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 45, 70, 40),
                child: Text(
                  'All you need to know about \n\'BEACHY STUFF\'',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'LondrinaSolid',
                      fontSize: 35.0,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            color: textColor,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0)
                      ],
                      fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: ()  {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  'Surf\'s Up!',
                  style: TextStyle(
                      fontFamily: 'LondrinaSolid',
                      fontSize: 32.0,
                      color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.yellow[800],
                  primary: Colors.yellow[600],
                  padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: WaveWidget(
                    duration: 1,
                    config: CustomConfig(
                      gradients: [
                        [Color(0xFF3A2DB3), Color(0xFF3A2DB1)],
                        [Color(0xFFEC72EE), Color(0xFFFF7D9C)],
                        [Color(0xFFfc00ff), Color(0xFF00dbde)],
                        [Color(0xFF396afc), Color(0xFF2948ff)]
                      ],
                      durations: [35000, 19440, 10800, 6000],
                      heightPercentages: [0.25, 0.27, 0.30, 0.30],
                      blur: MaskFilter.blur(BlurStyle.inner, 5),
                      gradientBegin: Alignment.centerLeft,
                      gradientEnd: Alignment.centerRight,
                    ),
                    waveAmplitude: 1.0,
                    backgroundColor: Colors.cyan[100],
                    size: Size(double.infinity, 160.0),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
