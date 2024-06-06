import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant_search/constant_search.dart';
import '../text_button/text_button.dart';
import '../text_form_feild/text_form_field.dart';

class Residencies extends StatefulWidget {
   Residencies({super.key});

  @override
  State<Residencies> createState() => _ResidenciesState();
}

class _ResidenciesState extends State<Residencies> {
  TextEditingController destinationController = TextEditingController();
  DateTime? selectedDate;
  bool _showBottomSheet = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin:const EdgeInsets.all(20),
            height: 215,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.indigo, width: 5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField2(
                    controller: destinationController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your destination';
                      }
                    },
                    lebal: 'Enter the destination',
                    color: Colors.grey,
                  ),
                  const Divider(color: Colors.indigo, thickness: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text_Button(
                        text: 'Choose the start date of the trip',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        onpressed:  ()  {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 200,
                                color: Colors.white,
                                child:const Center(
                                  child: Text('This is the BottomSheet for selecting rooms and guests'),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  const Divider(color: Colors.indigo, thickness: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _showBottomSheet = true; // عرض الـ BottomSheet
                          });
                        },
                        child: Text(
                          'Select rooms and guests',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const ConstantSearch(),
        ],
      ),
    );
  }
}
