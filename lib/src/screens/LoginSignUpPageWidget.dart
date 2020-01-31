import 'package:flutter/material.dart';
import 'package:hub/src/ctrl/LoginCtrl.dart';
import 'package:hub/src/widgets/CustomTextField.dart';
import 'package:hub/src/ctrl/ProviderPageController.dart';
import 'package:hub/src/widgets/CircleButton.dart';

class LoginSignUpPageWidget extends StatefulWidget {

   final LoginCtrl loginCtrl;

   //Construtor
   LoginSignUpPageWidget({this.loginCtrl});

  @override
  _LoginSignUpPageWidgetState createState() => _LoginSignUpPageWidgetState();
}

class _LoginSignUpPageWidgetState extends State<LoginSignUpPageWidget> {

  static int pageCadastrar = 0;
  static int pageLogin = 1;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.developer_mode,
            size: 50,
            color: Theme.of(context).accentColor,
          ),

          Container(height: 50,),

          CustomTextField(
            label: "EMAIL", 
            hint: "seuemail@email.com",
            
            ),
          Container(height: 25,),
          CustomTextField(label: "PASSWORD", hint: "***************",),
          Container(height: 25,),
          CustomTextField(label: "CONFIRM PASSWORD", hint: "***************",),

          Container(height: 25,), 
         
          GestureDetector(
            onTap: (){
              ProviderPageController.of(context).toPage(pageLogin);
            },
            child: Container(
              width: double.infinity,
              child: Text("já tem uma conta?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  )),
            ),
          ),

          Container(height: 40,), 

          CicleButton(
            label: "CADASTRE-SE",
            onTap:() {
              //ProviderPageController.of(context).toPage(pageLogin);
              this.widget.loginCtrl.register(context);
            }
          ),
        ],
      ),
    );
  }
}
