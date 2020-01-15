import 'package:hub/src/interface/view.dart';
import 'package:hub/src/mdl/LoginMdl.dart';
import 'package:hub/src/screens/LoginPage.dart';

//Atua como se fosse uma interface
class LoginCtrl  {
  set view(AppView value){}
  void buttonClick(){}
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
  void buttonClick() {
    int v1 = int.parse(this.loginMdl.ctrlTxtEdt1.text);
    int v2 = int.parse(this.loginMdl.ctrlTxtEdt2.text);

    if(v1 == v2){
      this.loginMdl.result = true;
    }
    this._view.refreshData(this.loginMdl);
  }

 
 
}

