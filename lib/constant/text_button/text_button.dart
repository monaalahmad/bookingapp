import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Text_Button extends StatelessWidget {
  const Text_Button({super.key, required this.text, required this.onpressed, required this.size, required this.fontWeight, required this.color});

  final String text;
  final VoidCallback onpressed;
  final double size;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}
