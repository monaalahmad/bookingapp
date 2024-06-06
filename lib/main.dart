import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/responsive/mobile.dart';
import 'package:untitled/responsive/responsive.dart';
import 'package:untitled/shared/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Service Booking App',
      theme: ThemeData(
        dialogTheme: DialogTheme(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Responsive(
        mobile: Mobile(),
      ),
      routes: routs,
    );
  }
}
