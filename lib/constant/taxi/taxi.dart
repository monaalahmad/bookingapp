import 'package:flutter/material.dart';
import 'package:untitled/constant/text_form_feild/text_form_field.dart';
import '../constant_search/constant_search.dart';
import '../text_button/text_button.dart';
import 'package:intl/intl.dart';

class Taxi extends StatefulWidget {
  @override
  State<Taxi> createState() => _TaxiState();
}

class _TaxiState extends State<Taxi> {
  bool option1Selected = false;
  bool option2Selected = false;
  TextEditingController startLocationController = TextEditingController();
  TextEditingController destinationController = TextEditingController();
  DateTime? selectedDate;
  final format = DateFormat("yyyy-MM-dd HH:mm");

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
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.indigo, width: 5),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            option1Selected = !option1Selected;
                            option2Selected = false;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: option1Selected
                                    ? Colors.indigo
                                    : Colors.transparent,
                                border: Border.all(
                                    color: option1Selected
                                        ? Colors.indigo
                                        : Colors.indigo,
                                    width: 2),
                              ),
                            ),
                            const Text(
                              'One way',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            option2Selected = !option2Selected;
                            option1Selected = false;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: option2Selected
                                    ? Colors.indigo
                                    : Colors.transparent,
                                border: Border.all(
                                    color: option2Selected
                                        ? Colors.indigo
                                        : Colors.indigo,
                                    width: 2),
                              ),
                            ),
                            const Text(
                              'going and coming back',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(color: Colors.indigo, thickness: 5),
                TextFormField2(
                  controller: startLocationController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your start location';
                    }
                  },
                  lebal: 'Enter the starting location',
                  color: Colors.grey,
                ),
                const Divider(color: Colors.indigo, thickness: 5),
                TextFormField2(
                  controller: destinationController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Choose destination';
                    }
                  },
                  lebal: 'Choose destination',
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
