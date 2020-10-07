import 'dart:developer';
import 'dart:async';
import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LocationScreen extends StatefulWidget {
  static const String id = 'Location_Screen';
  const LocationScreen({Key key}) : super(key: key);
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  TextEditingController suburbController = new TextEditingController();
  Future<String> query;
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(child: Text("CivicConnect")),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            Container(
                height: 200,
                width: 200,
                child: Image.asset("assets/polling.png")),
            SizedBox(height: 20),
            Center(
                child: Text(
              "What is the name of your suburb?",
              style: TextStyle(fontSize: 20),
            )),
            SizedBox(height: 20),
            Container(
              width: 200,
              child: TextField(
                controller: suburbController,
                decoration: InputDecoration(labelText: 'Suburb name'),
              ),
            ),
            SizedBox(height: 20),
            new RaisedButton(
                onPressed: () {
                  getLatestMunicipality(suburbController.text);
                  setState(() {
                    visibility = true;
                  });
                  Timer(Duration(seconds: 3), () {
                    Navigator.pushReplacementNamed(
                        context, UserBottomNavigationBarController.id);
                  });
                },
                child: Text('Ok')),
            SizedBox(height: 20),
            FutureBuilder<String>(
                future: getLatestMunicipality(
                    suburbController.text), // function where you call your api
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  // AsyncSnapshot<Your object type>
                  if (visibility) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: Text('Please wait its loading...'));
                    } else {
                      if (snapshot.hasError)
                        return Center(child: Text('Error: Suburb not found'));
                      else
                        return Center(
                            child: new Text("You are part of the " +
                                '${snapshot.data}')); // snapshot.data  :- get your object which is pass from your downloadData() function
                    }
                  } else
                    return Container();
                }),
          ],
        ),
      ),
    );
  }
}

Future<String> getLatestMunicipality(String enteredText) async {
  DocumentSnapshot variable = await FirebaseFirestore.instance
      .collection('data')
      .doc(enteredText)
      .get();

  return variable.data()['Municipality'].toString();
}
