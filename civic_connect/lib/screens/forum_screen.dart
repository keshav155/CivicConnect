import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ForumScreen extends StatefulWidget {
  static const String id = 'Forum_Screen';
  const ForumScreen({Key key}) : super(key: key);

  @override
  _ForumScreenState createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  final TextEditingController _controller = TextEditingController();
  String message;
  CrudMethods _crudMethods = new CrudMethods();
  QuerySnapshot forumSnapshot;
  Widget CommentList() {
    return Container(
      child: Column(
        children: <Widget>[
          forumSnapshot != null
              ? ListView.builder(
                  itemCount: forumSnapshot.docs.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CommentTile(
                        name:
                            forumSnapshot.docs[index].data()['Name'].toString(),
                        time:
                            forumSnapshot.docs[index].data()["Time"].toString(),
                        comment: forumSnapshot.docs[index]
                            .data()["Comment"]
                            .toString());
                  })
              : Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                )
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _crudMethods.getData().then((result) {
      setState(() {
        forumSnapshot = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Forum Screen"),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Burwood Library',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Reviewing the decision open library open on 24th December',
                        style: TextStyle(
                          fontSize: 18,
                        ))
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '2 comments',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              decoration: BoxDecoration(color: Colors.black12),
            ),
            CommentList(),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Icon(Icons.add_comment), onPressed: () {}),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Enter your comment',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    child: RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          //widget.onPressed(message);
                          //_controller.text = '';
                        });
                      },
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      fillColor: Colors.lightBlue[300],
                      shape: CircleBorder(),
                      elevation: 0.0,
                    ),
                    constraints: BoxConstraints(
                      maxWidth: 40,
                      maxHeight: 40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class CrudMethods {
  getData() async {
    print(FirebaseFirestore.instance
        .collection("Posts")
        .doc('Burwood Library')
        .collection('Discussion Forum')
        .doc('User1')
        .get()
        .toString());
    return await FirebaseFirestore.instance
        .collection("Posts")
        .doc('Burwood Library')
        .collection('Discussion Forum')
        .get();
  }
}

class CommentTile extends StatelessWidget {
  String name, time, comment;
  CommentTile(
      {@required this.name, @required this.time, @required this.comment});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        decoration: new BoxDecoration(
          color: Colors.lightBlue[50],
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: new Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.person,
                  size: 50,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name),
                    Text(time),
                  ],
                )),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(2.0),
              padding: const EdgeInsets.all(8.0),
              //  decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Text(comment),
            )
          ],
        ));
  }
}
