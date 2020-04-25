import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/Home/startwaterchl.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../res.dart';
class ChallengeBar extends StatefulWidget {
  @override
  _ChallengeBarState createState() => _ChallengeBarState();
}

class _ChallengeBarState extends State<ChallengeBar> {
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
                    Padding(
                      padding: const EdgeInsets.only(top:108.0,left: 70),
                      child: Text('Take a maximum shower \n           of 3 minutes',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black
                      ),),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: <Widget>[
                    Image.asset(Res.a20,width: 70,height: 70,),
              Container(
                width: 220,
                height: 230,
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
        , Image.asset(Res.a19,width: 70,height: 70,),
                  ],
                ),
              Padding(
                padding: const EdgeInsets.only(top:80.0),
                child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Startchallenge()));
                    },
                    child: Text('Make a challenge \n        together',style: TextStyle(fontSize: 19,color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
               SizedBox(height: 20,),
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
                      child: Text('Home', style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),  SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left:35.0,top: 50),
                      child: Text('Achievement', style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
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
