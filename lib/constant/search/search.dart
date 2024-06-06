import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../residencies/residencies.dart';
import '../taxi/taxi.dart';
import '../touristical_monuments/touristical_monuments.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> with SingleTickerProviderStateMixin {
  bool option1Selected = false;
  bool option2Selected = false;
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
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('MyTrip'),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.indigo,
          tabs: const [
            Tab(text: 'Residencies'),
            Tab(text: 'taxi'),
            Tab(text: 'touristical monuments'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Get.toNamed('/Reservation');
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Residencies(),
          Taxi(),
          const TouristicalMonuments(),
        ],
      ),
    );
  }
}
