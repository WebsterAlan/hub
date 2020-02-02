import 'package:flutter/material.dart';
import 'package:hub/src/widgets/CircleButton.dart';
import 'package:hub/src/widgets/CustomTextField.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginSignInPageWidget extends StatefulWidget {
  @override
  _LoginSignInPageWidgetState createState() => _LoginSignInPageWidgetState();
}

class _LoginSignInPageWidgetState extends State<LoginSignInPageWidget> {
  
  
  Widget _textForgot() {
    return Container(
      width: double.infinity,
      child: Text(
        "Esqueceu a Senha?",
        textAlign: TextAlign.right,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }

  Widget _lineTextLine() {
    return Row(
      children: <Widget>[
        Expanded(
            child: Divider(
          color: Colors.black,
          height: 15,
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "CONECTAR COM ",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: Divider(
          color: Colors.black,
          height: 15,
        )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(height: 80),
          Icon(Icons.developer_mode,
              size: 50, color: Theme.of(context).accentColor),
          Spacer(),
          CustomTextField(label: "EMAIL", hint: "nome@email.com"),
          Container(height: 25),
          CustomTextField(label: "SENHA", hint: "***************"),
          Container(height: 25),
          _textForgot(),
          Container(height: 25),
          CicleButton(
            label: "ENTRAR",
          ),
          Container(height: 25),
          _lineTextLine(),
          Container(height: 25),
          _signInButton(),
          Container(height: 20),
          
        ],
      ),
    );
  }
  Widget _signInButton() {
    return OutlineButton(
       splashColor:  Colors.grey,
       onPressed: (){},
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
       highlightElevation: 0,
       borderSide: BorderSide(color: Colors.grey),
       child: Padding(padding:const EdgeInsets.fromLTRB(0, 10, 0, 10),
       child: Row(
         mainAxisSize: MainAxisSize.min ,
         mainAxisAlignment:MainAxisAlignment.center ,
         children: <Widget>[
           Image(image: AssetImage("images/google_logo.png"),height: 35.0,),
           Padding(padding: const EdgeInsets.only(left: 10),
           child: Text("Sign in with Google",
           style: TextStyle(fontSize: 20, color: Colors.grey),
           ),),
           
         ],

       ),
       ),
    );
  }
}
