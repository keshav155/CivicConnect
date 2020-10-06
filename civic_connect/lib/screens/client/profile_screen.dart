import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; //CURRENTLY NOT IN USE, might be used for profile picture selection.

class ClientProfileScreen extends StatefulWidget {
  static const String id = 'Client_Profile_Screen';
  const ClientProfileScreen({Key key}) : super(key: key);
  @override
  _ClientProfileScreenState createState() => _ClientProfileScreenState();
}

class _ClientProfileScreenState extends State<ClientProfileScreen> {
  @override
  Widget build(BuildContext context) {
    //user information
    String userName = "Text userName";
    String userInfo =
        "Test userInfo, Test userInfo, Test userInfo, Test userInfo, Test userInfo, Test userInfo, Test userInfo, Test userInfo, Test userInfo, Test userInfo, Test userInfo, Test userInfo, Test userInfo, Test userInfo, Test userInfo, ";
    String userSex = "Test userSex";
    String userMarital = "Test userMarital";
    String userJob = "Test userJob";
    String userCouncil = "Test userCouncil";
    String userInterests = "Test userInterests";

    const lightBlueColor = 0xffd8f0f5; //used for background of information.
    const darkGrayColor = 0xff846f75; //used for gray color of text
    const double topGap =
        8; //between the subject line (Sex, Marital status...) and the information.
    const double bottomGap =
        16; //under the information, before the next subject line.

    const userInformationPadding = EdgeInsets.only(
        left: 10,
        top: 10,
        right: 10,
        bottom: 10); //borders around the user information
    const topicTextPadding = EdgeInsets.only(
        left: 10, top: 8, right: 10, bottom: 8); //border around the topic text

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text("Profile")),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: <Widget>[
          //Editable Profile Picture Icon.
          Image.asset(
            'assets/EditableProfileImage.png',
            fit: BoxFit.cover, // this is the solution for border
            width: 130,
            height: 130,
          ),

          //Text above user information
          Container(
              padding: topicTextPadding,
              color: Color(lightBlueColor),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('About ' + userName,
                        style: TextStyle(color: Color(darkGrayColor))),
                  ])),

          //User's About Information
          Container(
              padding: userInformationPadding, //border around the text boxes
              //   color: Color(lightBlueColor),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      //allows for multiline text, necessary if there is a lot of information
                      child: Text(
                        userInfo,
                      ),
                    ),
                  ])),

          //Text above user sex
          Container(
              padding: topicTextPadding,
              color: Color(lightBlueColor),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Sex', style: TextStyle(color: Color(darkGrayColor))),
                  ])),

          //User's Sex
          Container(
              padding: userInformationPadding, //border around the text boxes
              //    color: Color(lightBlueColor),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        //allows for multiline text, necessary if there is a lot of information.
                        userSex,
                      ),
                    ),
                  ])),

          //Text above user marital
          Container(
              padding: topicTextPadding,
              color: Color(lightBlueColor),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Marital Status',
                        style: TextStyle(color: Color(darkGrayColor))),
                  ])),

          //User's Marital
          Container(
              padding: userInformationPadding, //border around the text boxes
              //  color: Color(lightBlueColor),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        //allows for multiline text, necessary if there is a lot of information.
                        userMarital,
                      ),
                    ),
                  ])),

          //Text above user job
          Container(
              color: Color(lightBlueColor),
              padding: topicTextPadding,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Job', style: TextStyle(color: Color(darkGrayColor))),
                  ])),

          //User's Job
          Container(
              padding: userInformationPadding, //border around the text boxes
              //    color: Color(lightBlueColor),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      //allows for multiline text, necessary if there is a lot of information.
                      child: Text(
                        userJob,
                      ),
                    ),
                  ])),

          //Text above user Council
          Container(
              padding: topicTextPadding,
              color: Color(lightBlueColor),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Council',
                        style: TextStyle(color: Color(darkGrayColor))),
                  ])),

          //User's Council
          Container(
              padding: userInformationPadding, //border around the text boxes
              //     color: Color(lightBlueColor),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      //allows for multiline text, necessary if there is a lot of information.
                      child: Text(
                        userCouncil,
                      ),
                    ),
                  ])),

          //Text above user Interests
          Container(
              padding: topicTextPadding,
              color: Color(lightBlueColor),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Interests',
                        style: TextStyle(color: Color(darkGrayColor))),
                  ])),

          //User's Interests
          Container(
              padding: userInformationPadding, //border around the text boxes
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      //allows for multiline text, necessary if there is a lot of information.
                      child: Text(
                        userInterests,
                      ),
                    ),
                  ])),
        ])),
      ),
    );
  }
}
