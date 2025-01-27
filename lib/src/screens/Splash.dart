import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hub/src/screens/LoginWidget.dart';


class Splash extends  StatefulWidget {
  
  @override
  _SplashState createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 4)).then((_){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginWidget()));
    }); 
  }
  
  @override
  Widget build(BuildContext context) {
      return Container(color: Colors.red, child: Center(child: Container(width: 150,height: 150,child: Image.asset("images/guia_gay_logo.png"))));
  }
}