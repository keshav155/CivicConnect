import 'package:civic_connect/screens/client/active_post_screen.dart';
import 'package:civic_connect/screens/user/active_post_screen.dart';
import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
    QueryDocumentSnapshot dataToPass;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text("Posts")),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("Posts")
              .where("Open", isEqualTo: true)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView(
              children: snapshot.data.docs.map((document) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      dataToPass = document;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserActivePostScreen(
                              dataPassed: document,
                            ),
                          ));
                    },
                    child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                document.id.toString(),
                                style: TextStyle(fontSize: 25),
                              ),
                              Text(
                                document.data()['Subtitle'],
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        )),
                  ),
                );
              }).toList(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
