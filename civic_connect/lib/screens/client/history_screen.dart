import 'package:civic_connect/screens/client/active_post_screen.dart';
import 'package:civic_connect/screens/client/history_post_screen.dart';
import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ClientHistoryScreen extends StatefulWidget {
  static const String id = 'Client_History_Screen';
  const ClientHistoryScreen({Key key}) : super(key: key);
  @override
  _ClientHistoryScreenState createState() => _ClientHistoryScreenState();
}

class _ClientHistoryScreenState extends State<ClientHistoryScreen> {
  QueryDocumentSnapshot dataToPass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("History")),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("Posts")
              .where("Open", isEqualTo: false)
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
                            builder: (context) => ClientHistoryPostScreen(
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
    );
  }
}
