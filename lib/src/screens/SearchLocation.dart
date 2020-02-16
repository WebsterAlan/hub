import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocation/geolocation.dart';
import 'package:latlong/latlong.dart';


class SearchLocation extends StatefulWidget{
  @override
  __SearchlocationState createState() => __SearchlocationState();
  }

class __SearchlocationState extends State<SearchLocation> {

  MapController mapController = new MapController();
  

  getPermission() async {
    final GeolocationResult result = await Geolocation.requestLocationPermission(
      permission: const LocationPermission(
        android: LocationPermissionAndroid.fine,
        ios: LocationPermissionIOS.always));
        return result;
  }

  getLocation(){
    return getPermission().then((result) async {
      if(result.isSucessful){
        final coords = await Geolocation.currentLocation(accuracy: LocationAccuracy.best);
      }
    });
  }
   buildMap(){
    StreamSubscription<LocationResult> subscription = Geolocation.currentLocation(accuracy: LocationAccuracy.best).listen((result) {
           if(result.isSuccessful) {
             mapController.move(new LatLng(result.location.latitude, result.location.longitude),15.0);
                       // todo with result
             }
     });
  }

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
     body: new FlutterMap(
       mapController:  mapController,
       options: new  MapOptions(
         center: buildMap(),
         minZoom: 5.0
       ),
       layers: [
         new TileLayerOptions(
         urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
         subdomains: ['a','b','c']
       ),
       ]),

    );
  }
}

