
import 'package:flutter/material.dart';
import 'package:hub/src/config/database.dart';
import 'package:hub/src/entity/UserEntity.dart';


class LoginMdl{

  //Esses valores estão setados na LoginPage como controllers
  final TextEditingController ctrlTxtEdtEmailLogin = new TextEditingController();
  final TextEditingController ctrlTxtEdtPasswordLogin = new TextEditingController();

  //Variável da classe
  bool result =  false;

//Provedor de Banco de Dados
  DBProvider provider = DBProvider.db;

  
  Future<bool> efetuarLogin(String email, String password) async {
    final db = await provider.database;
    List<Map> maps = await db.query("SELECT * FROM User WHERE email == $email AND password == $password");
    if (maps.length > 0) {
      return true;
    }
    return false;
  } 

  /*newClient(User newUser) async {
    
    final db = await provider.database;
    var res = await db.rawInsert(
      "INSERT Into Client (id,first_name)"
      " VALUES (${newUser.id},${newUser.firstName})");
    return res; 
  }*/
}