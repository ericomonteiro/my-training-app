import 'package:http/http.dart';

class SecurityClient {
  static void anonymousTest() async {
    final Uri uri = Uri.parse('http://192.168.15.23:8080/auth-test/anonymous');
    final Response response = await get(uri);
    print(response.body);
  }
}



