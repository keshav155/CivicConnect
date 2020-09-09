import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class ForumScreen extends StatefulWidget {
  static const String id = 'Forum_Screen';
  const ForumScreen({Key key}) : super(key: key);
  @override
  _ForumScreenState createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forum Screen"),
      ),
    );
  }
}
