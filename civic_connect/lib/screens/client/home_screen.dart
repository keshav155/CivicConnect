import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class ClientHomeScreen extends StatefulWidget {
  static const String id = 'Client_Home_Screen';
  const ClientHomeScreen({Key key}) : super(key: key);
  @override
  _ClientHomeScreenState createState() => _ClientHomeScreenState();
}

class _ClientHomeScreenState extends State<ClientHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
    );
  }
}
