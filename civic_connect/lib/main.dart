import 'package:civic_connect/screens/user/forum_screen.dart';
import 'package:civic_connect/screens/user/history_screen.dart';
import 'package:civic_connect/screens/user/home_screen.dart';
import 'package:civic_connect/screens/user/onboarding_screen.dart';
import 'package:civic_connect/screens/user/settings_screen.dart';
import 'package:civic_connect/screens/user/user_screen.dart';
import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';

void main() => runApp(CivicConnect());

class CivicConnect extends StatefulWidget {
  @override
  _CivicConnectState createState() => _CivicConnectState();
}

class _CivicConnectState extends State<CivicConnect> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // change the initialRoute here if you want to test out your screen
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'OpenSans',
        ),

        // change the initialRoute here if you want to test out your screen
        initialRoute: BottomNavigationBarController.id,
        routes: {
          // Define the routes here
          OnboardingScreen.id: (context) => OnboardingScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          HistoryScreen.id: (context) => HistoryScreen(),
          SettingsScreen.id: (context) => SettingsScreen(),
          UserScreen.id: (context) => UserScreen(),
          ForumScreen.id: (context) => ForumScreen(),
          BottomNavigationBarController.id: (context) =>
              BottomNavigationBarController(),

          //Builder
        }); //Material App
  }
}
