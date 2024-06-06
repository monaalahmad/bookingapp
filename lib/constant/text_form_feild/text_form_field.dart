import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormField2 extends StatelessWidget {
  final TextEditingController controller;
  final String lebal;
  final Color color;
  final String? Function(dynamic value) validator;


  TextFormField2({
    Key? key,
    required this.controller,
    required this.validator,
    required this.lebal,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border:const OutlineInputBorder(
            borderSide: BorderSide(
            ),
          ),
          labelText: lebal,
          labelStyle: TextStyle(
            color: color,
          ),
        ),
        validator: validator,
      ),
    );
  }
}
