import 'package:flutter/material.dart';
import 'package:hub/src/interface/LoginPageView.dart';
import 'package:hub/src/mdl/LoginMdl.dart';


//Atua como se fosse uma interface
class LoginCtrl  {
  set view(LoginPageView value){}
  void buttonClick(BuildContext context){}
}

//Implementação
class AppLoginCtrl implements LoginCtrl{
 
  //Model
  LoginMdl loginMdl;

  //LoginPage
  LoginPageView _view;

  AppLoginCtrl(){
    this.loginMdl = LoginMdl();
  }

  @override
  set view(LoginPageView value) {
    //Injeção por interface
    _view = value;
    //Já obtem o loginMdl instanciado
    this._view.refreshLoginMdl(this.loginMdl);
  }

  @override
  Future<void> buttonClick(BuildContext context) async {
    /*String email = this.loginMdl.ctrlTxtEdtEmailLogin.text;
    String password = this.loginMdl.ctrlTxtEdtPasswordLogin.text;
    
    bool result = await  loginMdl.efetuarLogin(email,password);
      this._view.refreshLoginMdl(this.loginMdl);
      
    if(result == true) {
      //Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage()));
      Navigator.pushNamed(context, "/gallery");
    }*/
    Navigator.pushNamed(context, "/gallery");
    
  }

 
 
}

