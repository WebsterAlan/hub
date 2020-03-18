import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';


User userFromJson(String str) {
  final jsonData = json.decode(str);
  return User.fromMap(jsonData);
}

String userToJson(User data) {
  final dyn = data.toMap();
  return json.encode(dyn);
}

@JsonSerializable()
class User {
  int codUsuario;
  String nomUsuario;
  String desEmail;
  String desSenha;
  String indSexo;
  String indOrientacaoSexual;
  DateTime dtaNascimento;
  int idFacebook;
  int idGooglePlus;
  DateTime dtaHraCadastro;
  DateTime dtaHraUltimaModificacao;
  String indStatus;
  String indExcluido;
  //Others Attributtes 
  int id;
  String name;
  String email;
  String password;
  
//construtor da entidade
  User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.codUsuario,
    this.nomUsuario,
    this.desEmail,
    this.desSenha,
    this.indSexo,
    this.indOrientacaoSexual,
    this.dtaNascimento,
    this.idFacebook,
    this.idGooglePlus,
    this.dtaHraCadastro,
    this.dtaHraUltimaModificacao,
    this.indStatus,
    this.indExcluido,
  });

  factory User.fromMap(Map<String, dynamic> json) => new User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        codUsuario: json["codUsuario"],
        nomUsuario: json["nomUsuario"],
        desEmail: json["desEmail"],
        desSenha: json["desSenha"],
        indSexo: json["indSexo"],
        indOrientacaoSexual: json["indOrientacaoSexual"],
        dtaNascimento: json["dtaNascimento"],
        idFacebook: json["idFacebook"],
        idGooglePlus: json["idGooglePlus"],
        dtaHraCadastro: json["dtaHraCadastro"],
        dtaHraUltimaModificacao: json["dtaHraUltimaModificacao"],
        indStatus: json["indStatus"],
        indExcluido: json["indExcluido"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
        "codUsuario": codUsuario,
        "nomUsuario": nomUsuario,
        "desEmail": desEmail,
        "desSenha": desSenha,
        "indSexo": indSexo,
        "indOrientacaoSexual": indOrientacaoSexual,
        "dtaNascimento": dtaNascimento,
        "idFacebook": idFacebook,
        "idGooglePlus": idGooglePlus,
        "dtaHraCadastro": dtaHraCadastro,
        "dtaHraUltimaModificacao": dtaHraUltimaModificacao,
        "indStatus": indStatus,
        "indExcluido": indExcluido,
      };

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      codUsuario: json["codUsuario"],
      nomUsuario: json["nomUsuario"],
      desEmail: json["desEmail"],
      desSenha: json["desSenha"],
      indSexo: json["indSexo"],
      indOrientacaoSexual: json["indOrientacaoSexual"],
      dtaNascimento: json["dtaNascimento"],
      idFacebook: json["idFacebook"],
      idGooglePlus: json["idGooglePlus"],
      dtaHraCadastro: json["dtaHraCadastro"],
      dtaHraUltimaModificacao: json["dtaHraUltimaModificacao"],
      indStatus: json["indStatus"],
      indExcluido: json["indExcluido"],
    );
  }
}