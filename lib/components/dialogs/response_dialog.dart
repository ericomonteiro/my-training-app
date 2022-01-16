
import 'package:flutter/material.dart';

class ResponseDialog extends StatelessWidget{
  final String title;
  final String message;
  final String buttonText;
  final IconData icon;
  final Color colorIcon;
  const ResponseDialog({
    Key? key,
    this.title = "",
    this.message = "",
    this.buttonText = "Ok",
    this.icon = Icons.info,
    this.colorIcon = Colors.black45
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Visibility(
          child: Text(title),
          visible: title.isNotEmpty,
        ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Icon(
                icon,
                size: 64,
                color: colorIcon,
              ),
            ),
          Visibility(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
            visible: message.isNotEmpty,
          )
        ],
      ),
      actions: <Widget>[
        TextButton(onPressed: () => Navigator.pop(context), child: Text(buttonText))
      ],
    );
  }
}

class SuccessDialog extends StatelessWidget {
  final String title;
  final String message;
  final IconData icon;

  const SuccessDialog(
      this.message, {
        Key? key,
        this.title = 'Success',
        this.icon = Icons.done,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponseDialog(
      title: title,
      message: message,
      icon: icon,
      colorIcon: Colors.green,
    );
  }
}