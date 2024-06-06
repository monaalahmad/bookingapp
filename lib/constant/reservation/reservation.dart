import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../text_button/text_button.dart';
import '../text_form_feild/text_form_field.dart';

class Reservation extends StatefulWidget {
  Reservation({super.key});

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  TextEditingController numberController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30, vertical: 30,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Enter your reservation details',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'To manage your accommodation reservation, please enter your reservation confirmation number and secret code.',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Number Reservation',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField2(
                        controller: numberController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your number';
                          }
                        }, lebal: '',
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'secret code',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField2(
                        controller: codeController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your code';
                          }
                        }, lebal: '',
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: Colors.indigo,
                      ),
                      child: Text_Button(
                        text: 'Reservation management',
                        onpressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                title: const Text('Booked'),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Good'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
