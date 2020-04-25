import 'package:flutter/material.dart';
import 'package:flutter_app/Home/achievement.dart';
import 'package:flutter_app/Home/startwaterchl.dart';
import 'package:flutter_app/res.dart';

import 'HomeBar.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  List<Object> _tabs;

  @override
  void initState() {
    // TODO: implement initState
    _tabs = [];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Res.backgroundimg), fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:52.0,top: 55),
                      child: Text('1234', style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                    SizedBox(width: 120,),
                    Padding(
                      padding: const EdgeInsets.only(left:50.0,top: 55),
                      child: Text('1234', style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    )
                  ],
                ),
        SizedBox(height: 480,),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:25.0,top: 50),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChallengeBar()));
                        },
                        child: Text('Challenges', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left:45.0,top: 50),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                        },
                        child: Text('Home', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                      ),
                    ),  SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left:35.0,top: 50),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Achievement()));

                        },
                        child: Text('Achievement', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}