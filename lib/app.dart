import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hub/routes.dart';
import 'package:hub/src/screens/LoginPageWidget.dart';


class MyApp extends StatelessWidget {
  
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Router',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: routes(),
      //home: Splash(),
      home: LoginPageWidget(),
    );
  }
}