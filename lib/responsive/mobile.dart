import 'package:flutter/material.dart';

import '../widght/home_page/home_page.dart';

class Mobile extends StatefulWidget {

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePage(),
    );
  }
}