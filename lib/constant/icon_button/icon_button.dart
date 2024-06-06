import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Icon_Button extends StatelessWidget {
  const Icon_Button({super.key, required this.icon, required this.onpressed});

  final IconData icon;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed:onpressed,
      icon: Icon(icon),
    );
  }
}
