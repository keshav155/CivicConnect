import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'Home_Screen';
  const HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CivicConnect'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
          Text(
            'Profile',
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
          Text(
            'Burwood',
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.school),
          ),
          Text(
            'Education',
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.history),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.chat),
              ),
            ],
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(

        onPressed: () {},
        child: Text(
            '✔',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
        ),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}