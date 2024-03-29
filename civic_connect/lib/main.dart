import 'package:civic_connect/screens/client/active_post_screen.dart';
import 'package:civic_connect/screens/client/history_screen.dart';
import 'package:civic_connect/screens/client/home_screen.dart';
import 'package:civic_connect/screens/client/profile_screen.dart';
import 'package:civic_connect/screens/client/settings_screen.dart';
import 'package:civic_connect/screens/forum_screen.dart';
import 'package:civic_connect/screens/user/active_post_screen.dart';
import 'package:civic_connect/screens/user/history_post_screen.dart';
import 'package:civic_connect/screens/user/history_screen.dart';
import 'package:civic_connect/screens/user/home_screen.dart';
import 'package:civic_connect/screens/user/result_screen.dart';
import 'package:civic_connect/screens/onboarding_screen.dart';
import 'package:civic_connect/screens/user/location_screen.dart';
import 'package:civic_connect/screens/user/settings_screen.dart';
import 'package:civic_connect/screens/user/profile_screen.dart';
import 'package:civic_connect/widgets/ClientBottomNavigationBar.dart';
import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:civic_connect/state/vote.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(CivicConnect());
}

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
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),

        // change the initialRoute here if you want to test out your screen
        initialRoute: ClientBottomNavigationBarController.id,
        routes: {
          // Define the routes here
          OnboardingScreen.id: (context) => OnboardingScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          ResultScreen.id: (context) => ResultScreen(),
          HistoryScreen.id: (context) => HistoryScreen(),
          SettingsScreen.id: (context) => SettingsScreen(),
          ProfileScreen.id: (context) => ProfileScreen(),
          ForumScreen.id: (context) => ForumScreen(),
          LocationScreen.id: (context) => LocationScreen(),
          UserActivePostScreen.id: (context) => UserActivePostScreen(),
          UserBottomNavigationBarController.id: (context) =>
              UserBottomNavigationBarController(),
          UserHistoryPostScreen.id: (context) => UserHistoryPostScreen(),
          ClientActivePostScreen.id: (context) => ClientActivePostScreen(),
          ClientHomeScreen.id: (context) => ClientHomeScreen(),
          ClientHistoryScreen.id: (context) => ClientHistoryScreen(),
          ClientSettingsScreen.id: (context) => ClientSettingsScreen(),
          ClientProfileScreen.id: (context) => ClientProfileScreen(),
          ClientBottomNavigationBarController.id: (context) =>
              ClientBottomNavigationBarController(),

          //Builder
        }); //Material App
  }
}
