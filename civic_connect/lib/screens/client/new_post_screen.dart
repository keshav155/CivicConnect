import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class ClientNewPostScreen extends StatefulWidget {
  static const String id = 'Client_New_Post_Screen';
  const ClientNewPostScreen({Key key}) : super(key: key);
  @override
  _ClientNewPostScreenState createState() => _ClientNewPostScreenState();
}

class _ClientNewPostScreenState extends State<ClientNewPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Post"),
      ),
    );
  }
}
