import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forum Screen"),
      ),
      body: ListView(children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Discussion",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(20.0),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Burwood Library',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
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
////////////////////////////////////////////////////User message list
        Container(
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
                        Text('John'),
                      ],
                    )),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(2.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Text(
                    'I fell like the council is taking the right step when opening the library',
                  ),
                )
              ],
            )),
        Container(
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
                        Text('Bucky'),
                      ],
                    )),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(2.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Text(
                    'I will definitely come to take some book to prepare for the final exam',
                  ),
                )
              ],
            )),
////////////////////// input function
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            children: <Widget>[
              Container(
                child:
                    IconButton(icon: Icon(Icons.add_comment), onPressed: () {}),
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
      ]),
    );
  }
}
