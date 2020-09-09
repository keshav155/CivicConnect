import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class ClientHistoryScreen extends StatefulWidget {
  static const String id = 'Client_History_Screen';
  const ClientHistoryScreen({Key key}) : super(key: key);
  @override
  _ClientHistoryScreenState createState() => _ClientHistoryScreenState();
}

class _ClientHistoryScreenState extends State<ClientHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History Screen"),
      ),
    );
  }
}
