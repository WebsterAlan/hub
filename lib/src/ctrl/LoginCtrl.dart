import 'package:flutter/material.dart';
import 'package:hub/src/interface/LoginPageView.dart';
import 'package:hub/src/mdl/LoginMdl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';



//Atua como se fosse uma interface
class LoginCtrl  {
  set view(LoginPageView value){}
  void buttonClick(BuildContext context){}
  void register(BuildContext context){}
  Future<String> signInWithGoogle() async {}
  void signOutGoogle() async {}
}

//Implementação
class AppLoginCtrl implements LoginCtrl{
 
  //Model
  LoginMdl loginMdl;

  //LoginPage
  LoginPageView _view;

  final FirebaseAuth _auth = FirebaseAuth.instance;
   
  final GoogleSignIn googleSignIn = GoogleSignIn();

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
    String email = this.loginMdl.ctrlTxtEdtEmailLogin.text;
    String password = this.loginMdl.ctrlTxtEdtPasswordLogin.text;
    
    bool result = await  loginMdl.efetuarLogin(email,password);
    this._view.refreshLoginMdl(this.loginMdl);
      
    if(result == true) {
      //Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage()));
      Navigator.pushNamed(context, "/gallery");
    }
    Navigator.pushNamed(context, "/gallery");
    
  }

//Transferir para RegisterCtrl
  Future<void> register(BuildContext context) async {

     String email = this.loginMdl.ctrlTxtEdtEmailLogin.text;
     String password = this.loginMdl.ctrlTxtEdtPasswordLogin.text;
     bool result = await  loginMdl.register();
     this._view.refreshLoginMdl(this.loginMdl);
  }



Future<String> signInWithGoogle() async {
  
  final GoogleSignInAccount googleSigninAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSigninAccount.authentication;
  final AuthCredential credential = GoogleAuthProvider.getCredential(idToken: googleSignInAuthentication.accessToken, accessToken: googleSignInAuthentication.idToken);
  final AuthResult authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser user = authResult.user;

  
  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);

  return 'signInWithGoogle succeeded : $user';
}



void signOutGoogle() async {
  
  await googleSignIn.signOut();
  print("User Sign Out");
}

 
}

