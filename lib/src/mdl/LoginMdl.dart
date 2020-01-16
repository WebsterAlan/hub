
import 'package:flutter/material.dart';
import 'package:hub/src/config/database.dart';
import 'package:hub/src/entity/UserEntity.dart';
import 'package:sqflite/sqflite.dart';

class LoginMdl{

  //Esses valores estão setados na LoginPage como controllers
  final TextEditingController ctrlTxtEdt1 = new TextEditingController();
  final TextEditingController ctrlTxtEdt2 = new TextEditingController();

  //Variável da classe
  bool result =  false;

//Provedor de Banco de Dados
  DBProvider provider = DBProvider.db;

  void efetuarLogin(String email, String password){
     
  
  }

  newClient(User newUser) async {
    
    final db = await provider.database;
    var res = await db.rawInsert(
      "INSERT Into Client (id,first_name)"
      " VALUES (${newUser.id},${newUser.firstName})");
    return res; 
    
  }
}