import 'package:agri/screens/farmerinvestorscreen.dart';
import 'package:flutter/material.dart';
import 'package:agri/screens/homescreen.dart';
import 'package:agri/screens/introscreen.dart';
import 'package:agri/screens/splashscreen.dart';
import 'package:agri/sidebar/sidebar_layout.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => FarmerInvestorScreen(),
  "/intro": (BuildContext context) => IntroScreen(),
};

void main() => runApp(new MaterialApp(
    theme:
    ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));