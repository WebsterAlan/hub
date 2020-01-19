import 'package:flutter/material.dart';
import 'package:hub/src/interface/RegisterPageView.dart';
import 'package:hub/src/mdl/RegisterMdl.dart';


class RegisterCtrl  {
  set view(RegisterPageView value){}
  void buttonClick(BuildContext context){}
}
 //Implementação
class AppRegisterCtrl implements RegisterCtrl{
 
  //Model
  RegisterMdl registerMdl;

  //LoginPage
  RegisterPageView _view;

  AppRegisterCtrl(){
    this.registerMdl = RegisterMdl();
  }

  @override
  set view(RegisterPageView value) {
    //Injeção por interface
    _view = value;
    //Já obtem o loginMdl instanciado
    this._view.refreshRegisterMdl(this.registerMdl);
  }

  @override
  void buttonClick(BuildContext context) {
    String name = this.registerMdl.ctrlTxtEdtName.text;
    String email = this.registerMdl.ctrlTxtEdtEmail.text;
    String password = this.registerMdl.ctrlTxtEdtPassword.text;
    this.registerMdl.efetuarRegistro(name, email, password);
    this._view.refreshRegisterMdl(this.registerMdl);
    Navigator.pushNamed(context, "/login");
    
  }
}





