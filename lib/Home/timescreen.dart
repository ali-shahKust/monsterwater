import 'dart:async';

import 'package:countdown_flutter/countdown_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Home/Homepage.dart';
import 'package:flutter_app/Home/achievement.dart';

import '../res.dart';
import 'HomeBar.dart';
class Timescreen extends StatefulWidget {
  @override
  _TimescreenState createState() => _TimescreenState();
}

class _TimescreenState extends State<Timescreen> with TickerProviderStateMixin {
  int _counter = 0;
  AnimationController _controller;
  int levelClock = 180;
  var remainTime;

  Timer _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
        oneSec,
            (Timer timer) => setState(() {
          if (_start == 0) {
            timer.cancel();
          } else {
            _start = _start - 1;
          }
        }));
  }


  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
@override
  void initState() {
    // TODO: implement initState
  startTimer();
  print(_start);
  super.initState();
  }

  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Res.timescreen), fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:68.0),
                  child: Image.asset(Res.a41,width: 105,height: 57,),
                ),
                Row(
                  children: <Widget>[

                    CountdownFormatted(
                      duration: Duration(minutes: 9),
                      builder: (BuildContext ctx, String remaining) {
                        remainTime = remaining;
                        print(remaining);
                        return Container(
                          child: Row(
                            children: <Widget>[
                            Padding(
                      padding: const EdgeInsets.only(left:103.0,top: 20),
                      child: Text('${remaining}', style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                            ],
                          ),
                        ); // 01:00:00
                      },
                    ),

                  ],
                ),
                Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:238.0,top: 50),
                        child: _start>50?Container():Image.asset(Res.a53,width: 115,height: 100,),
                      ),
                      Center(child: Padding(
                        padding: const EdgeInsets.only(left:253.0,top: 70),
                        child: _start>50?Container(
                          child:  SizedBox(height: 80,),
                        ):Text("You have \nwasted more than\n1 ltr already",style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      )),
                    ]
                ),
                SizedBox(height: 185,),
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
