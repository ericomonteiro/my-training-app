
import 'package:my_training_app/http/security_client.dart';

class SecurityService {
  void anonymousTest() {
    SecurityClient.anonymousTest();
  }

  void login(String username, String password) {
    SecurityClient.login(username, password);
  }
}

