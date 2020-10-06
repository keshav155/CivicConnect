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
        automaticallyImplyLeading: false,
        title: Text('CivicConnect'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_city),
              SizedBox(width: 7),
              Text(
                "Burwood",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('✔',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
