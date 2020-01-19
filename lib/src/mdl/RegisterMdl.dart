
import 'package:flutter/material.dart';
import 'package:hub/src/config/database.dart';

class RegisterMdl{

  DBProvider provider = DBProvider.db;
  final TextEditingController ctrlTxtEdtName = new TextEditingController();
  final TextEditingController ctrlTxtEdtEmail = new TextEditingController();
  final TextEditingController ctrlTxtEdtPassword = new TextEditingController();

 void efetuarRegistro(String name, String email, String password) async{

   final db = await provider.database;
    await db.rawInsert(
      "INSERT Into User (name,email,password) VALUES ('$name','$email','$password')");
 }




}