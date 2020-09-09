import 'package:flutter/material.dart';

class ClientSettingsScreen extends StatefulWidget {
  static const String id = 'Client_Settings_Screen';
  const ClientSettingsScreen({Key key}) : super(key: key);
  @override
  _ClientSettingsScreenState createState() => _ClientSettingsScreenState();
}

class _ClientSettingsScreenState extends State<ClientSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Screen"),
      ),
    );
  }
}
