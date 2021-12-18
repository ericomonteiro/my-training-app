import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String label;

  const DefaultButton({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: Text(label),
          ),
        ],
      ),
    );
  }
}

