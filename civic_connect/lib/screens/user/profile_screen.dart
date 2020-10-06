import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'Profile_Screen';
  const ProfileScreen({Key key}) : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    //user information

    const lightBlueColor = 0xffd8f0f5; //used for background of information.
    const darkGrayColor = 0xff846f75; //used for gray color of text
    const userInformationPadding = EdgeInsets.only(
        left: 10, top: 5, right: 10, bottom: 5); //borders around the user information
    const topicTextPadding = EdgeInsets.only(
        left: 10, top: 16, right: 10, bottom: 8); //border around the topic text

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: Text("Profile")),
        ),
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("Users")
                .where("Role", isEqualTo: "Citizen")
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.data == null) return CircularProgressIndicator();
              var userData = snapshot.data.docs[0].data();
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }
              return SingleChildScrollView(
                child: Center(
                    child: Column(children: <Widget>[
                  //Editable Profile Picture Icon.
                  Container(
                    width: 280,
                    padding: EdgeInsets.only(
                        left: 10, top: 30, right: 10, bottom: 8),
                    child: Stack(
                      children: [
                        GestureDetector(
                            onTap: () {}, // handle your image tap here
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(125.0),
                              child: FadeInImage(
                                  fit: BoxFit.cover,
                                  width: 250,
                                  height: 250,
                                  placeholder: AssetImage("assets/giphy.gif"),
                                  image: NetworkImage(userData['ImageURL'])),
                            )),
                      ],
                    ),
                  ),
                  //Text above user information
                  Container(
                      padding: topicTextPadding,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('About ',
                                style: TextStyle(color: Color(darkGrayColor))),
                          ])),

                  //User's About Information
                  Container(
                      padding: userInformationPadding,
                      //border around the text boxes
                      color: Color(lightBlueColor),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              //allows for multiline text, necessary if there is a lot of information
                              child: Text(userData['Info']),
                            ),
                          ])),

                  //Text above user sex
                  Container(
                      padding: topicTextPadding,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Sex',
                                style: TextStyle(color: Color(darkGrayColor))),
                          ])),

                  //User's Sex
                  Container(
                      padding: userInformationPadding,
                      //border around the text boxes
                      color: Color(lightBlueColor),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                userData['Sex'],
                              ),
                            ),
                          ])),

                  //Text above user marital
                  Container(
                      padding: topicTextPadding,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Marital Status',
                                style: TextStyle(color: Color(darkGrayColor))),
                          ])),

                  //User's Marital
                  Container(
                      padding: userInformationPadding,
                      //border around the text boxes
                      color: Color(lightBlueColor),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                userData['Marital Status'],
                              ),
                            ),
                          ])),

                  //Text above user job
                  Container(
                      padding: topicTextPadding,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Job',
                                style: TextStyle(color: Color(darkGrayColor))),
                          ])),

                  //User's Job
                  Container(
                      padding: userInformationPadding,
                      //border around the text boxes
                      color: Color(lightBlueColor),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              //allows for multiline text, necessary if there is a lot of information.
                              child: Text(
                                userData['Job'],
                              ),
                            ),
                          ])),

                  //Text above user Council
                  Container(
                      padding: topicTextPadding,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Council',
                                style: TextStyle(color: Color(darkGrayColor))),
                          ])),

                  //User's Council
                  Container(
                      padding: userInformationPadding,
                      //border around the text boxes
                      color: Color(lightBlueColor),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              //allows for multiline text, necessary if there is a lot of information.
                              child: Text(
                                userData['Council'],
                              ),
                            ),
                          ])),

                  //Text above user Interests
                  Container(
                      padding: topicTextPadding,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Interests',
                                style: TextStyle(color: Color(darkGrayColor))),
                          ])),

                  //User's Interests
                  Container(
                      padding: userInformationPadding,
                      //border around the text boxes
                      color: Color(lightBlueColor),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              //allows for multiline text, necessary if there is a lot of information.
                              child: Text(
                                userData['Interests'],
                              ),
                            ),
                          ])),
                ])),
              );
            }));
  }
}
