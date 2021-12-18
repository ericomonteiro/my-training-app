import 'package:flutter/material.dart';

class LoginPageController  {
  final TextEditingController _txtMailController;
  final TextEditingController _txtPasswordController;

  String _email = '';
  String _password = '';

  LoginPageController(this._txtMailController, this._txtPasswordController);

  void doLogin() {
    _updateData();
  }

  void _updateData() {
    _email = _txtMailController.text;
    _password = _txtPasswordController.text;
  }
}