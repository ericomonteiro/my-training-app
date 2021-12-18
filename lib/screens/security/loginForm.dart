import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_training_app/components/DefaultButton.dart';
import 'package:my_training_app/components/text_fields/DefaultTextField.dart';
import 'package:my_training_app/consts/text_const.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);

  static const _titleAppBar = 'Login';
  final TextEditingController _txtMailController = TextEditingController();
  final TextEditingController _txtPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_titleAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Image.asset(
                  'assets/images/strong.png',
                  height: 180,
                  width: 180,
                ),
              ),
              DefaultTextField(
                controller: _txtMailController,
                icon: Icons.email,
                hint: TextConst.mailHint,
                label: TextConst.mailLabel,
                keyboardType: TextInputType.emailAddress,
                clearable: true,
              ),
              DefaultTextField(
                controller: _txtPasswordController,
                icon: Icons.password,
                hint: '',
                label: TextConst.passwordLabel,
                obscureText: true,
                clearable: true,
              ),
              const DefaultButton(label: TextConst.loginLabel),
            ],
          ),
        ));
  }

}