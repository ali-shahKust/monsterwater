import 'package:flutter/material.dart';
import 'package:flutter_app/Home/Homepage.dart';

import '../res.dart';
import 'HomeBar.dart';
class Achievement extends StatefulWidget {
  @override
  _AchievementState createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Res.acheivement), fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 100,),
                Container(
                  height: 400,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:28.0),
                        child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Image.asset(Res.a33,width:250,height: 80,),
                              ),
                              Center(child: Padding(
                                padding: const EdgeInsets.only(left:0,top: 48,right: 100),
                                child: Text("some text",style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                              )),
                            ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:28.0),
                        child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Image.asset(Res.a33,width:250,height: 80,),
                              ),
                              Center(child: Padding(
                                padding: const EdgeInsets.only(left:0,top: 48,right: 100),
                                child: Text("some text",style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                              )),
                            ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:28.0),
                        child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Image.asset(Res.a33,width:250,height: 80,),
                              ),
                              Center(child: Padding(
                                padding: const EdgeInsets.only(left:0,top: 48,right: 100),
                                child: Text("some text",style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                              )),
                            ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:28.0),
                        child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Image.asset(Res.a33,width:250,height: 80,),
                              ),
                              Center(child: Padding(
                                padding: const EdgeInsets.only(left:0,top: 48,right: 100),
                                child: Text("some text",style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                              )),
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
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
