import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class ClientProfileScreen extends StatefulWidget {
  static const String id = 'Client_Profile_Screen';
  const ClientProfileScreen({Key key}) : super(key: key);
  @override
  _ClientProfileScreenState createState() => _ClientProfileScreenState();
}

class _ClientProfileScreenState extends State<ClientProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
    );
  }
}
