import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return null;
  }
}

class LoginPageState extends State<LoginPage>{
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text('Texto'),
             Text('texto'),
             Text('texto'),
             Text('texto'),
             ],
          ),
        ),
     );
  }

}