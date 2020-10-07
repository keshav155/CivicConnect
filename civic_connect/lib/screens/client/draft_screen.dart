import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class ClientDraftScreen extends StatefulWidget {
  static const String id = 'Client_Home_Screen';
  const ClientDraftScreen({Key key}) : super(key: key);
  @override
  _ClientDraftScreenState createState() => _ClientDraftScreenState();
}

class _ClientDraftScreenState extends State<ClientDraftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Draft Screen"),
      ),
    );
  }
}
