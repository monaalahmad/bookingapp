import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constant/favorite/favorite.dart';
import '../../constant/home/home.dart';
import '../../constant/profile/profile.dart';
import '../../constant/search/search.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.favorite),
            label: 'My Favorite',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Home(),
          const Search(),
          const Favorite(),
          Profile(
            context: context,
          ),
        ],
      ),
    );
  }
}
