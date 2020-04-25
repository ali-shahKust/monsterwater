import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Home/HomeBar.dart';
import 'package:flutter_app/Home/Homepage.dart';

import 'Home/startwaterchl.dart';


void main()=>runApp(
    MaterialApp(
      home:MyApp() ,
    )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
    return Scaffold(
      body: HomePage(),
    );
  }
}