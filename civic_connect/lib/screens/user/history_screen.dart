import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  static const String id = 'History_Screen';
  const HistoryScreen({Key key}) : super(key: key);
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
      ),
      body: ListView(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              '4 contributions',
              style: TextStyle(fontSize: 15),
            ),
          ),
          decoration: BoxDecoration(color: Colors.lightBlue),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: ExpansionTile(
                title: Text(
                  'Burwood Library',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: Text(
                    'Reviewing the decision open library open on 24th December',
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            'Reviewing the decision open library open on 24th December',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Your vote',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        Text('You voted NO',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Outcome',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('78% voted NO',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        Text('22% voted YES',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('The Burwood Council made the decision to keep the library closed till further notice with respect to the stage 4 restrictions',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ExpansionTile(
                title: Text(
                  'Extension of Parking lot',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: Text(
                    'Request to extend the parking lot at 65 Avenue',
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            'Request to extend the parking lot at 65 Avenue',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Your vote',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        Text('You voted -',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Outcome',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('-% voted NO',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        Text('-% voted YES',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('The Burwood Council made the decision to -',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ExpansionTile(
                title: Text(
                  'Aquatic Centre',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: Text(
                    'Petition to reduce fees for swimming classes',
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            'Petition to reduce fees for swimming classes',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Your vote',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        Text('You voted -',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Outcome',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('-% voted NO',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        Text('-% voted YES',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('The Burwood Council made the decision to -',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ExpansionTile(
                title: Text(
                  'Bins and Waste',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: Text(
                    'Petition to have 2 days for garbage collection per week',
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            'Petition to have 2 days for garbage collection per week',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Your vote',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        Text('You voted -',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Outcome',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('-% voted NO',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        Text('-% voted YES',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('The Burwood Council made the decision to -',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
          ],
        ),
      ]),
    );
  }
}