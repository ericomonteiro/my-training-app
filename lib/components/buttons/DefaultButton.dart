import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const DefaultButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

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
            onPressed: onPressed,
            child: Text(label),
          ),
        ],
      ),
    );
  }
}

