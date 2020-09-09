import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'Profile_Screen';
  const ProfileScreen({Key key}) : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
    );
  }
}
