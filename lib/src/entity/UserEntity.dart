import 'dart:convert';

User userFromJson(String str) {
  final jsonData = json.decode(str);
  return User.fromMap(jsonData);
}

String userToJson(User data) {
  final dyn = data.toMap();
  return json.encode(dyn);
}

class User {
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
  });

  factory User.fromMap(Map<String, dynamic> json) => new User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
      };
}