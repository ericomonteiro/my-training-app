
import 'package:flutter/material.dart';
import 'package:my_training_app/components/dialogs/response_dialog.dart';
import 'package:my_training_app/screens/security/homePage.dart';
import 'package:my_training_app/service/security_service.dart';

class LoginPageController  {
  final TextEditingController _txtMailController;
  final TextEditingController _txtPasswordController;
  final SecurityService _securityService = SecurityService();
  final BuildContext context;

  String _email = '';

  String _password = '';

  LoginPageController(this.context, this._txtMailController, this._txtPasswordController);

  void doLogin() {
    _updateData();
    print(_email);
    print(_password);
    _securityService.login(_email, _password);
    // _showSuccessfulMessage(context);
    // Route route = MaterialPageRoute(builder: (context) => const HomePage());
    // Navigator.push(context, route);
    // Navigator.pushReplacement(context, route);
  }

  void _updateData() {
    _email = _txtMailController.text;
    _password = _txtPasswordController.text;
  }

  Future _showSuccessfulMessage(BuildContext context) async {
      await showDialog(
          context: context,
          builder: (contextDialog) {
            return const SuccessDialog('successful transaction');
          });
    }
}