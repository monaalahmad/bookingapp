import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;

  const Responsive({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 700) {
        return mobile;
      } else if (constraints.maxWidth < 1100) {
        return Container();
      } else {
        return Container();
      }
    });
  }
}
