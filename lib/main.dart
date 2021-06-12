import 'package:flutter/material.dart';
import 'package:your_beach/developers.dart';
import 'package:your_beach/home.dart';
import 'package:your_beach/info_display.dart';
import 'package:your_beach/opening_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Opening(),
      // base route (home), when we first open the app
      // value is functions which takes context object as argument,
      // // which descirbes where in the widget tree we are
      '/home': (context) => Home(),
      '/info': (context) => InfoDisplay(),
      '/developers': (context) => Developers(),
    },
  ));
}
