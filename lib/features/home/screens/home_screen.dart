import 'package:beeai/common/widgets/custom_bottom_navigation_bar.dart';
import 'package:beeai/features/hive/screens/hive_data_screen.dart';
import 'package:beeai/features/map/screens/map_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;

  final <Widget> _screens = [
    HiveDataScreen(),
    MapScreen()
  ];

  void _onItemTapped(int index){

    setState(() {
      
      _currentIndex = index;

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
      ),
    );
  }

}
