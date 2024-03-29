import 'package:civic_connect/screens/user/history_screen.dart';
import 'package:civic_connect/screens/user/home_screen.dart';
import 'package:civic_connect/screens/user/settings_screen.dart';
import 'package:civic_connect/screens/user/profile_screen.dart';
import 'package:flutter/material.dart';

class UserBottomNavigationBarController extends StatefulWidget {
  static const String id = 'UserBottomNavigationBarController_Screen';
  @override
  _UserBottomNavigationBarControllerState createState() =>
      _UserBottomNavigationBarControllerState();
}

class _UserBottomNavigationBarControllerState
    extends State<UserBottomNavigationBarController> {
  final List<Widget> pages = [
    HomeScreen(
      key: PageStorageKey('HomeScreen'),
    ),
    ProfileScreen(
      key: PageStorageKey('Profile'),
    ),
    HistoryScreen(
      key: PageStorageKey('HistoryScreen'),
    ),
    SettingsScreen(
      key: PageStorageKey('SettingsScreen'),
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Profile'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('History'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              backgroundColor: Colors.blue),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}
