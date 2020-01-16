import 'package:flutter/material.dart';
import 'package:hub/src/interface/view.dart';
import 'package:hub/src/mdl/LoginMdl.dart';
import 'package:hub/src/screens/CategoryPage.dart';

//Atua como se fosse uma interface
class LoginCtrl  {
  set view(AppView value){}
  void buttonClick(BuildContext context){}
}

//Implementação
class AppLoginCtrl implements LoginCtrl{
 
  //Model
  LoginMdl loginMdl;

  //LoginPage
  AppView _view;

  AppLoginCtrl(){
    this.loginMdl = LoginMdl();
  }

  @override
  void set view(AppView value) {
    //Injeção por interface
    _view = value;
    //Já obtem o loginMdl instanciado
    this._view.refreshData(this.loginMdl);
  }

  @override
  void buttonClick(BuildContext context) {
    String email = this.loginMdl.ctrlTxtEdt1.text;
    String password = this.loginMdl.ctrlTxtEdt2.text;
    
    this.loginMdl.efetuarLogin(email,password);
    this._view.refreshData(this.loginMdl);
    Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage()));
  }

 
 
}

