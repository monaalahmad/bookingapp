import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../icon_button/icon_button.dart';
import '../text_button/text_button.dart';
import 'package:get/get.dart';
class Favorite extends StatefulWidget {

  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title:const Text('My Favorite'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/ffnn.jfif'),
                ],
              ),
              const SizedBox(height: 40,),
              Container(
                padding:const EdgeInsets.symmetric(horizontal: 20,),
                child:const Text(
                  'Find your favorite places \n to stay easily',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                padding:const EdgeInsets.symmetric(horizontal: 20,),
                child:const Text(
                  'Save the accommodations you like during your search and find them all here.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                color: Colors.indigo,
                child: Text_Button(
                  text: 'Start Search',
                  onpressed: (){
                    Get.toNamed('/Search');
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
    );
  }
}
