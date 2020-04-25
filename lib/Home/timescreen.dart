import 'package:flutter/material.dart';
import 'package:flutter_app/Home/Homepage.dart';
import 'package:flutter_app/Home/achievement.dart';

import '../res.dart';
import 'HomeBar.dart';
class Timescreen extends StatefulWidget {
  @override
  _TimescreenState createState() => _TimescreenState();
}

class _TimescreenState extends State<Timescreen> {
  @override
  Widget build(BuildContext context) {
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
                    Padding(
                      padding: const EdgeInsets.only(left:108.0,top: 20),
                      child: Text('05', style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left:40.0,top: 20),
                      child: Text('30', style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    )
                  ],
                ),
                Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:238.0,top: 50),
                        child: Image.asset(Res.a53,width: 115,height: 100,),
                      ),
                      Center(child: Padding(
                        padding: const EdgeInsets.only(left:253.0,top: 70),
                        child: Text("some\nText",style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                      )),
                    ]
                ),
                SizedBox(height: 205,),
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
