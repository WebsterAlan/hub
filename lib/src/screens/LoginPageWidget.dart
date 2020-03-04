import 'package:flutter/material.dart';
import 'package:hub/src/ctrl/ProviderPageController.dart';
import 'package:hub/src/widgets/CircleButton.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {

   ProviderPageController provider = new ProviderPageController();
   static int pageCadastrar = 0;
   static int pageLogin = 2;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      color: Theme.of(context).accentColor.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 60,
          ),
          Icon(
            Icons.developer_mode,
            size: 40,
            color: Colors.white,
          ),
          Container(
            height: 25,
          ),
          
          Container(
            height: 120,
          ),
          CicleButton(
            backgroundColor: Colors.transparent,
            bordeColor: Colors.white,
            label: "CADASTRE-SE",
            onTap: () {
            ProviderPageController.of(context).toPage(pageCadastrar);
            },
          ),
          Container(
            height: 30,
          ),
          CicleButton(
            backgroundColor: Colors.white,
            textColor: Theme.of(context).accentColor,
            label: "LOGIN",
            onTap: () {
              ProviderPageController.of(context).toPage(pageLogin);
            },
          ),
        ],
      ),
    );
  }
}
