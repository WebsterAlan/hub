import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hub/src/screens/LoginPage.dart';
import 'package:hub/src/screens/RegisterPage.dart';
import 'package:hub/src/screens/Splash.dart';


const HomepageRoute = "/";
const RegisterPageRoute = "/register";
const LoginPageRoute = "/login";

RouteFactory routes() {
  return (settings) {
    final Map<String, dynamic> arguments = settings.arguments;
    Widget screen;
        switch(settings.name) {
        case HomepageRoute:
        screen = Splash();
        break;
        case LoginPageRoute:
        screen = LoginPage();
        break;
        case RegisterPageRoute:
        screen = RegisterPage();
        break;
        default:
        screen = Splash();
        break;
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}