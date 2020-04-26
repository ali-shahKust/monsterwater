import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/Home/Homepage.dart';
import 'package:flutter_app/Home/achievement.dart';
import 'package:flutter_app/Home/challengescreen.dart';
import 'package:flutter_app/Home/startwaterchl.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../res.dart';
class ChallengeBar extends StatefulWidget {
  @override
  _ChallengeBarState createState() => _ChallengeBarState();
}

class _ChallengeBarState extends State<ChallengeBar> {

  final _formKey = GlobalKey<FormState>();
  Completer<GoogleMapController> _controller = Completer();
  MapType _currentMapType = MapType.normal;
  static const LatLng _center = const LatLng(45.521563, -122.677433);
  LatLng _lastMapPosition = _center;
  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }
  final Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Res.challengesscreen), fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,

          body: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[

                  ],
                ),
                SizedBox(height: 110,),
                Row(
                  children: <Widget>[
                    Image.asset(Res.a20,width: 70,height: 70,),
              Container(
                width: 220,
                height: 300,
                child: Stack(
                  children: <Widget>[
                    GoogleMap(
                      onCameraMove: _onCameraMove,
                      markers: _markers,
                      mapType: _currentMapType,
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _center,
                        zoom: 11.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child:Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          children: <Widget>[
                            FloatingActionButton(
                              onPressed: _onAddMarkerButtonPressed,
                              materialTapTargetSize: MaterialTapTargetSize.padded,
                              backgroundColor: Colors.green,
                              child: const Icon(Icons.add_location, size: 36.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              )
        , GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChallengeScreen()));

                        },
                        child: Image.asset(Res.a19,width: 70,height: 70,)),
                  ],
                ),
              Padding(
                padding: const EdgeInsets.only(top:80.0),
                child: GestureDetector(
                    onTap: (){
                    showDialog(context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          content: Container(
                            width: 300.0,
                            height: 400.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: const Color(0xFFFFFF),
                              borderRadius:
                              new BorderRadius.all(new Radius.circular(32.0)),
                            ),
                            child: Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                            Positioned(
                            right: -40.0,
                            top: -40.0,
                            child: InkResponse(
                            onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                      child: Icon(Icons.close),
                      backgroundColor: Colors.red,
                      ),
                      ),
                      ),

                              Form(
                                key: _formKey,
                                child: ListView(
                                  children: <Widget>[
                                  Container(
                                  height: 55,
                                  color: Colors.white,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsets.only(left:0.0,right: 0,top: 0),
                                    child: Center(
                                      child: Container(

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Color(0xff12d003)
                                        ),
                                        child: TextField(
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.white),
                                          decoration: InputDecoration(
                                            hintText: "Name of the challenge",
                                            contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                    Container(
                                      height: 150,
                                      color: Colors.white,
                                      width: double.infinity,
                                      child: Padding(
                                        padding: EdgeInsets.only(left:0.0,right: 0,top: 0),
                                        child: Center(
                                          child: Container(

                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                                color: Color(0xff12d003)
                                            ),
                                            child: TextField(
                                              style: TextStyle(
                                                  fontSize: 15, color: Colors.white),
                                              decoration: InputDecoration(
                                                hintText: "Description",
                                                contentPadding: const EdgeInsets.symmetric(vertical: 60.0,horizontal: 15),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 55,
                                      color: Colors.white,
                                      width: double.infinity,
                                      child: Padding(
                                        padding: EdgeInsets.only(left:0.0,right: 0,top: 0),
                                        child: Center(
                                          child: Container(

                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                color: Color(0xff12d003)
                                            ),
                                            child: TextField(
                                              style: TextStyle(
                                                 fontSize: 15, color: Colors.white),
                                              decoration: InputDecoration(
                                                hintText: "End of date",
                                                contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(top:8.0,right: 100,),
                                          child: Container(
                                            child: Text('Total Points', style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black
                                            ),),
                                          ),
                                        )
                                        ,
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.all(15.0),
                                              child: Container(

                                                width: 50,
                                                height: 50,
                                                color: Color(0xff0bc1fc),
                                                child: Center(
                                                  child: Text('10', style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black
                                                  ),),
                                                ),
                                              ),
                                            ),  Padding(
                                              padding: const EdgeInsets.all(15.0),
                                              child: Container(

                                                width: 50,
                                                height: 50,
                                                color: Color(0xff0bc1fc),
                                                child: Center(
                                                  child: Text('10', style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black
                                                  ),),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                color: Color(0xff0bc1fc),
                                                child: Center(
                                                  child: Text('10', style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black
                                                  ),),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RaisedButton(
                                        color: Color(0xff0bc1fc),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(18.0),
                                            side: BorderSide(                                      color: Color(0xff0bc1fc),
                                            )
                                        ),
                                        child: Text("Save",style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                        ),),
                                        onPressed: () {
                                          if (_formKey.currentState.validate()) {
                                            _formKey.currentState.save();
                                          }
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                            ),
                          ),
                      );
                    }
                    );
//                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Startchallenge()));
                    },
                    child: Text('Make a challenge \n        together',style: TextStyle(fontSize: 19,color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
               SizedBox(height: 20,),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:25.0,top: 45),
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
                      padding: const EdgeInsets.only(left:45.0,top: 45),
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
                      padding: const EdgeInsets.only(left:35.0,top: 45),
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
  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }
  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(
          title: 'Challenge',
          snippet: 'I am the best',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ),
      );
    });
  }
}
