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
                              Padding(
                                padding: const EdgeInsets.only(left:20.0,top: 17),
                                child: Image.asset(Res.Earth,width: 75,height: 75,),
                              ),

                              Center(child: Padding(
                                padding: const EdgeInsets.only(left:40,top: 48,right: 30),
                                child: Text("Pick up litter.practice a \"Leave no trace\"...",style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
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
                              Padding(
                                padding: const EdgeInsets.only(left:18.0,top: 25),
                                child: Image.asset(Res.a7,width: 65,height: 65,),
                              ),

                              Center(child: Padding(
                                padding: const EdgeInsets.only(left:60,top: 48,right: 70),
                                child: Text("Take a shower of maximum 4 minutes",style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
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
                              Padding(
                                padding: const EdgeInsets.only(left:18.0,top: 25),
                                child: Image.asset(Res.cli,width: 75,height: 75,),
                              ),

                              Center(child: Padding(
                                padding: const EdgeInsets.only(left:80,top: 48,right: 100),
                                child: Text("Planting trees",style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
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
                              Padding(
                                padding: const EdgeInsets.only(left:18.0,top: 20),
                                child: Image.asset(Res.cities,width: 75,height: 75,),
                              ),
                              Center(child: Padding(
                                padding: const EdgeInsets.only(left:76,top: 48,right: 60),
                                child: Text("Collect plastic bottles together",style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
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
