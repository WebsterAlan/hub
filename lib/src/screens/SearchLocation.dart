import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocation/geolocation.dart';

class SearchLocation extends StatefulWidget{
  @override
  __SearchlocationState createState() => __SearchlocationState();
  }

class __SearchlocationState extends State<SearchLocation> {

  MapController mapController = new MapController();

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
     body: new FlutterMap(
       mapController:  mapController,
       options: new  MapOptions(
         center: buildMap(),
         minZoom: 5.0
       ),
       layers: new TileLayerOptions(
         urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
       ),
       ),

    );
  }


}

