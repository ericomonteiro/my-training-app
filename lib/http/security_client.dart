import 'dart:convert';

import 'package:http/http.dart';
import 'package:my_training_app/consts/http_client_const.dart';
import 'package:my_training_app/http/dto/LoginDto.dart';

class SecurityClient {
  
  static void anonymousTest() async {
    final Uri uri = Uri.parse('http://192.168.15.23:8080/auth-test/anonymous');
    final Response response = await get(uri);
    print(response.body);
  }
  
  static void login(String username, String password) async {
    final body = json.encode(LoginDto(username, password).toJson());
    print(body);
    const path = 'security/login';
    final response = await post(
      _uriBuilder(path),
      headers: HttpClientConsts.headers,
      body: body,
      encoding: utf8
    );
    print(response.body);
  }
  
  static Uri _uriBuilder(String path) {
    return Uri.parse(HttpClientConsts.host + path);
  }
}

