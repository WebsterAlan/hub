import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hub/src/ctrl/LoginCtrl.dart';
import 'package:hub/src/screens/LoginPage.dart';
import 'package:hub/src/screens/LoginPageWidget.dart';
import 'package:hub/src/screens/LoginSignInPageWidget.dart';
import 'package:hub/src/screens/LoginSignUpPageWidget.dart';
import 'package:hub/src/screens/RegisterPage.dart';
import 'package:hub/src/screens/Splash.dart';

import 'src/screens/GaleryPage.dart';


const HomepageRoute = "/";
const RegisterPageRoute = "/register";
const LoginPageRoute = "/login";
//Others 
const LoginPageRouteWidget = "/loginWidget";
const LoginPageSignin = "/signin";
const LoginPageSignup = "/signup";
const GalleryPageRoute = "/gallery";
RouteFactory routes() {
  return (settings) {
    final Map<String, dynamic> arguments = settings.arguments;
    Widget screen;
        switch(settings.name) {
        case HomepageRoute:
        screen = Splash();
        break;
        case LoginPageRoute:
        screen = LoginPage(loginCtrl: AppLoginCtrl(),);
        break;
        case RegisterPageRoute:
        screen = RegisterPage();
        break;
        case GalleryPageRoute:
        screen = GaleryPage();
        break;
        //Others 
        case LoginPageRouteWidget:
        screen = LoginPageWidget();
        break;
        case LoginPageSignin:
        screen = LoginSignInPageWidget();
        break;
        case LoginPageSignup:
        screen = LoginSignUpPageWidget();
        break;
        default:
        //screen = LoginPage(loginCtrl: AppLoginCtrl(),);
        screen = LoginSignUpPageWidget();
        break;
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
} 