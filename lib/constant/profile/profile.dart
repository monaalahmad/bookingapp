import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../text_button/text_button.dart';

class Profile extends StatefulWidget {
  final BuildContext context;

  Profile({super.key, required this.context});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;
  bool showSignOut = true;

  final ImagePicker _picker = ImagePicker();
  XFile? _selectedImage;

  Future<void> _getImageFromGallery() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      _selectedImage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'My Profile',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 80,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.camera_alt),
                    onPressed: _getImageFromGallery,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text_Button(
            text: 'Your account',
            onpressed: () {},
            size: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text_Button(
                  color: Colors.black,
                  text: 'Manage your account',
                  onpressed: () {},
                  size: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text_Button(
                  color: Colors.black,
                  text: 'Ratings',
                  onpressed: () {},
                  size: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text_Button(
                  color: Colors.black,
                  text: 'Setting',
                  onpressed: () {},
                  size: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: <Widget>[
                    if (showSignOut)
                      Text_Button(
                        text: 'Sign out',
                        size: 20,
                        fontWeight: FontWeight.w600,
                        onpressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                title: const Text('Are you sure to log out?'),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Yes'),
                                    onPressed: () {
                                      setState(() {
                                        showSignOut = false;
                                      });
                                      Get.back();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Close'),
                                    onPressed: () {
                                      Get.back();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        color: Colors.black,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
