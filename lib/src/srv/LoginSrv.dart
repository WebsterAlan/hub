import 'dart:convert';
import 'package:hub/src/entity/UserEntity.dart';
import 'package:http/http.dart' as http;

String urlBase = "https://";
 
 Future<User> fetchUser() async {
    var response = await http.get(
        Uri.encodeFull(urlBase),
        headers: {"Accept": "application/json"}
    );
    return User.fromJson(json.decode(response.body));
} 

Future<User> sendUser({Map body}) async {
  return http.post(urlBase, body: body).then((http.Response response) {
    final int statusCode = response.statusCode;
 
    if (statusCode < 200 || statusCode > 400 || json == null) {
      throw new Exception("Error while fetching data");
    }
    return User.fromJson(json.decode(response.body));
  });
}
  
