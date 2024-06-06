import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.indigo,
        title:const Text('MyTrip'),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.indigo,
          tabs: const [
            Tab(text: 'Current'),
            Tab(text: 'Previous'),
            Tab(text: 'Canceled'),
          ],
        ),
        actions: [
          IconButton(
            icon:const Icon(Icons.add),
            onPressed: () {
              Get.toNamed('/Reservation');
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomePage(),
          TripsPage(),
          SettingsPage(),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding:const EdgeInsets.symmetric(horizontal: 30 , vertical: 100),
      child: Column(
        children: [
          Image.asset('assets/images/asa.jfif' , height: 200,),
          const SizedBox(height: 50,),
          const Text(
              'What is your next destination?',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50,),
          const Text(
              "You don't have any flights yet. When you make a reservation it \n will appear here.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class TripsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding:const EdgeInsets.symmetric(horizontal: 30 , vertical: 100),
      child: Column(
        children: [
          Image.asset('assets/images/mdhg.jfif' , height: 200,),
          const SizedBox(height: 50,),
          const Text(
            'See previous trips',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50,),
          const Text(
            "Here you can view all previous trips that will provide you with inspiring ideas to choose your \n next destination.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding:const EdgeInsets.symmetric(horizontal: 30 , vertical: 100),
      child: Column(
        children: [
          Image.asset('assets/images/knjh.jfif' , height: 200,),
          const SizedBox(height: 50,),
          const Text(
            'Plans change sometimes.',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50,),
          const Text(
            "Here you can view all canceled flights. Maybe you would like to \n book it again?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}