import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant_search/constant_search.dart';
import '../text_button/text_button.dart';
import '../text_form_feild/text_form_field.dart';

class TouristicalMonuments extends StatefulWidget {
  const TouristicalMonuments({super.key});

  @override
  State<TouristicalMonuments> createState() => _TouristicalMonumentsState();
}

class _TouristicalMonumentsState extends State<TouristicalMonuments> {

  TextEditingController DestController = TextEditingController();
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.indigo, width: 5),
            ),
            child: Column(
              children: [
                const Divider(color: Colors.indigo, thickness: 5),
                TextFormField2(
                  controller: DestController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your start location';
                    }
                  },
                  lebal: 'Enter the starting location',
                  color: Colors.grey,
                ),
                const Divider(color: Colors.indigo, thickness: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text_Button(
                      text: 'Choose Date',
                      size: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      onpressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2030),
                          builder: (context, child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: ColorScheme.dark(
                                  primary: Colors.indigo,
                                  onPrimary: Colors.white,
                                ),
                              ),
                              child: child!,
                            );
                          },
                        ).then((date) {
                          if (date != null) {
                            showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.fromDateTime(
                                  selectedDate ?? DateTime.now()),
                            ).then((time) {
                              if (time != null) {
                                setState(() {
                                  selectedDate = DateTime(
                                    date.year,
                                    date.month,
                                    date.day,
                                    time.hour,
                                    time.minute,
                                  );
                                });
                              }
                            });
                          }
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const ConstantSearch(),
        ],
      ),
    );
  }
}
