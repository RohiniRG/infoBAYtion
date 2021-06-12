import 'package:flutter/material.dart';

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
    );
  }
}