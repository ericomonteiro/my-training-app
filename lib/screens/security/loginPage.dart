import 'package:flutter/material.dart';
import 'package:my_training_app/components/buttons/DefaultButton.dart';
import 'package:my_training_app/components/text_fields/DefaultTextField.dart';
import 'package:my_training_app/consts/assets_const.dart';
import 'package:my_training_app/consts/text_const.dart';
import 'package:my_training_app/controller/security/loginPageController.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _txtMailController = TextEditingController();
  final TextEditingController _txtPasswordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    final LoginPageController loginPageController = LoginPageController(context, _txtMailController, _txtPasswordController);

    return Scaffold(
        appBar: AppBar(
          title: const Text(TextConst.loginPageTitle),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Image.asset(
                  AssetsConst.logo,
                  height: 180,
                  width: 180,
                ),
              ),
              DefaultTextField(
                controller: _txtMailController,
                onChanged: (value) {
                  setState(() {});
                },
                icon: Icons.email,
                hint: TextConst.mailHint,
                label: TextConst.mailLabel,
                keyboardType: TextInputType.emailAddress,
                clearable: true,
              ),
              DefaultTextField(
                controller: _txtPasswordController,
                onChanged: (value) {
                  setState(() {});
                },
                icon: Icons.password,
                hint: TextConst.passwordHint,
                label: TextConst.passwordLabel,
                obscureText: true,
                clearable: true,
              ),
              DefaultButton(
                label: TextConst.loginButtonLabel,
                onPressed: loginPageController.doLogin,
              ),
            ],
          ),
        ));
  }
}

