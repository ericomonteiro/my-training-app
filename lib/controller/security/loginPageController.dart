import 'package:flutter/material.dart';
import 'package:my_training_app/service/security_service.dart';

class LoginPageController  {
  final TextEditingController _txtMailController;
  final TextEditingController _txtPasswordController;
  final SecurityService _securityService = SecurityService();

  String _email = '';
  String _password = '';

  LoginPageController(this._txtMailController, this._txtPasswordController);

  void doLogin() {
    _updateData();
    print(_email);
    print(_password);
    _securityService.anonymousTest();
  }

  void _updateData() {
    _email = _txtMailController.text;
    _password = _txtPasswordController.text;
  }
}