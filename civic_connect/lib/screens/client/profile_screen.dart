import 'dart:io';
import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Used for profile picture selection.
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart'; // Used for uploading images.
import 'dart:async';

class ClientProfileScreen extends StatefulWidget {
  static const String id = 'Client_Profile_Screen';
  const ClientProfileScreen({Key key}) : super(key: key);
  @override
  _ClientProfileScreenState createState() => _ClientProfileScreenState();
}

class _ClientProfileScreenState extends State<ClientProfileScreen> {
  @override
  Widget build(BuildContext context) {
    const lightBlueColor = 0xffd8f0f5; //used for background of information.
    const darkGrayColor = 0xff846f75; //used for gray color of text

    final picker = ImagePicker();

    Future uploadImage(String selection) async { //used to get image from camera and gallery
      File _imageFile;
      if(selection == "Camera")
      {
        final pickedFile = await picker.getImage(source: ImageSource.camera);

        setState(() {
          _imageFile = File(pickedFile.path);
        });
        print("Camera image gotten: " + basename(_imageFile.path));
      }
      else
      {
        final pickedFile = await picker.getImage(source: ImageSource.gallery);

        setState(() {
          _imageFile = File(pickedFile.path);
        });
        print("Gallery image gotten: " + basename(_imageFile.path));
      }

      if(_imageFile != null)
      {
        //upload image to firebase storage.
        Future<void> updateImage(String fileURL) {
          FirebaseFirestore.instance
              .collection("Users")
              .doc("David")
              .update({"ImageURL": fileURL})
              .catchError((e)
          { print(e); });

          return null;
        }

        StorageReference storageReference = FirebaseStorage.instance
            .ref()
            .child('user/${basename(_imageFile.path)}}');
        StorageUploadTask uploadTask = storageReference.putFile(_imageFile);
        await uploadTask.onComplete;
        print('File Uploaded');
        storageReference.getDownloadURL().then((fileURL) {
          setState(() {
            updateImage(fileURL);
          });
        });
      }
    }

    const userInformationPadding = EdgeInsets.only(
        left: 10,
        top: 5,
        right: 10,
        bottom: 5); //borders around the user information

    const topicTextPadding = EdgeInsets.only(
        left: 10,
        top: 16,
        right: 10,
        bottom: 8); //border around the topic text

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: Text("Profile")),
        ),
        body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection("Users").snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.data == null) return CircularProgressIndicator();
              var userData = snapshot.data.docs[1].data();
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }
              return SingleChildScrollView(
                child: Center(
                    child: Column(children: <Widget>[

                      Container(
                        height:10, //gap from top of screen.
                      ),

                      Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {}, // handle your image tap here
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(125.0),
                                    child: FadeInImage(
                                      fit: BoxFit.cover,
                                      width: 250,
                                      height: 250,
                                      placeholder: AssetImage("assets/giphy.gif"),
                                      image: NetworkImage(userData['ImageURL']),) //Where the user image value is used
                                )),

                            FractionalTranslation(
                              translation: Offset(1.7,0), //button translation
                              child: PopupMenuButton(
                                  onSelected: (value) { // add this property
                                    setState(() {
                                      if (value == 0) {
                                        print("take a photo");
                                        uploadImage("Camera");
                                      }
                                      else if (value == 1) {
                                        print("gallery picture");
                                        uploadImage("Gallery");
                                      }
                                    });
                                  },
                                  itemBuilder: (context) =>                                   //Currently needs to be moved, so the list doesn't spawn under the finger that pushes the button.
                                  [
                                    PopupMenuItem(
                                      child: Icon(Icons.add_a_photo),
                                      value: 0,
                                    ),
                                    PopupMenuItem(
                                      child: Icon(Icons.add_photo_alternate),
                                      value: 1,
                                    ),
                                  ],
                                  child: Image.asset('assets/EditButton.png',
                                    fit: BoxFit.cover, // this is the solution for border
                                    width: 40,
                                    height: 40,
                                  )
                              ),
                            )

                          ]
                      ),

                      //Text above user information
                      Container(
                          padding: topicTextPadding,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text('About ' + Text(userData['Name']).data,
                                    style: TextStyle(color: Color(darkGrayColor))),
                              ])),

                      //User's About Information
                      Container(
                          padding: userInformationPadding, //border around the text boxes
                          color: Color(lightBlueColor),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  //allows for multiline text, necessary if there is a lot of information
                                    child: Text(userData['Info'])
                                ),
                              ])),

                      //Text above user sex
                      Container(
                          padding: topicTextPadding,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text('Sex', style: TextStyle(color: Color(darkGrayColor))),
                              ])),

                      //User's Sex
                      Container(
                          padding: userInformationPadding, //border around the text boxes
                          color: Color(lightBlueColor),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    //allows for multiline text, necessary if there is a lot of information.
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
                          padding: userInformationPadding, //border around the text boxes
                          color: Color(lightBlueColor),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    //allows for multiline text, necessary if there is a lot of information.
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
                                Text('Job', style: TextStyle(color: Color(darkGrayColor))),
                              ])),

                      //User's Job
                      Container(
                          padding: userInformationPadding, //border around the text boxes
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
                          padding: userInformationPadding, //border around the text boxes
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
                          padding: userInformationPadding, //border around the text boxes
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