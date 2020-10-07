import 'package:civic_connect/screens/client/history_screen.dart';
import 'package:civic_connect/screens/client/home_screen.dart';
import 'package:civic_connect/screens/client/profile_screen.dart';
import 'package:civic_connect/screens/client/settings_screen.dart';
import 'package:flutter/material.dart';

class ClientBottomNavigationBarController extends StatefulWidget {
  static const String id = 'ClientBottomNavigationBarController_Screen';
  @override
  _ClientBottomNavigationBarControllerState createState() =>
      _ClientBottomNavigationBarControllerState();
}

class _ClientBottomNavigationBarControllerState
    extends State<ClientBottomNavigationBarController> {
  final List<Widget> pages = [
    ClientHomeScreen(
      key: PageStorageKey('ClientHomeScreen'),
    ),
    ClientProfileScreen(
      key: PageStorageKey('ClientProfile'),
    ),
    ClientHistoryScreen(
      key: PageStorageKey('ClientHistoryScreen'),
    ),
    ClientSettingsScreen(
      key: PageStorageKey('ClientSettingsScreen'),
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
