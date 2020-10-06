import 'package:civic_connect/screens/forum_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ClientActivePostScreen extends StatelessWidget {
  static const String id = 'ActivePost_Screen';
  final QueryDocumentSnapshot dataPassed;
  const ClientActivePostScreen({Key key, @required this.dataPassed})
      : super(key: key);
//  @override
//  _ClientActivePostScreenState createState() => _ClientActivePostScreenState();
//}
//
//class _ClientActivePostScreenState extends State<ClientActivePostScreen> {
  @override
  Widget build(BuildContext context) {
    const lightBlueColor = 0xffd8f0f5;
    var closingDate = dateTimeConverter(dataPassed);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(dataPassed.id),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.forum,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ForumScreen.id);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.network(
                dataPassed['ImageURL'],
                fit: BoxFit.cover,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes
                          : null,
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 30,
              color: Color(lightBlueColor),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.date_range),
                  Text("Closing Date")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(closingDate.toString())),
            ),
            Container(
              height: 30,
              color: Color(lightBlueColor),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.description),
                  Text(
                    "Description",
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Container(
                width: 380,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Flexible(child: Text(dataPassed['Description'])),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
              color: Color(lightBlueColor),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.data_usage),
                  Text(
                    "Statistics",
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Yes"),
                  Container(
                    child: LinearPercentIndicator(
                      width: 300,
                      lineHeight: 10,
                      progressColor: Colors.lightGreen,
                      backgroundColor: Colors.red,
                      percent: dataPassed['Yes'] /
                          (dataPassed['Yes'] + dataPassed['No']),
                    ),
                  ),
                  Text("No"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 5),
                  Text(dataPassed['Yes'].toString() + " approved the decision"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.not_interested, color: Colors.red),
                  SizedBox(width: 5),
                  Text(dataPassed['No'].toString() + " approved the decision"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

dateTimeConverter(QueryDocumentSnapshot toBeConverted) {
  DateTime myDateTime = (toBeConverted.data()['Closing Date']).toDate();
  return DateFormat.yMMMd().add_jm().format(myDateTime);
}
