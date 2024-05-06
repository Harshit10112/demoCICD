
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:snow_login/LoginModel.dart';
import 'package:snow_login/forgotModel.dart';

class Repo {

  static Future<LoginModel> getData() async {
  final response = await http.post(
    Uri.parse('http://tmasspreprod.azurewebsites.net/api/MobileV3/Login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email' : "nitin.rawat@mindruby.com",
      'password': "Mindruby@1234"
    }),
  );
    print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return LoginModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

  static Future<ForgotPasswordModel> forgotApi() async {
  final response = await http.post(
    Uri.parse('http://tmasspreprod.azurewebsites.net/api/MobileV3/ForgotPassword'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email' : "nitin.rawat@mindruby.com",
    }),
  );
    print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return ForgotPasswordModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

}