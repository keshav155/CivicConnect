import 'package:flutter/material.dart';

class ClientSettingsScreen extends StatefulWidget {
  static const String id = 'Client_Settings_Screen';
  const ClientSettingsScreen({Key key}) : super(key: key);
  @override
  _ClientSettingsScreenState createState() => _ClientSettingsScreenState();
}

class _ClientSettingsScreenState extends State<ClientSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Settings")),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            //Notifications
            Row(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.notifications,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                IconButton(
                  icon: new Icon(
                    Icons.keyboard_arrow_right,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 1.5,
            ),
            // Privacy and Security
            Row(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.security,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Privacy",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                IconButton(
                  icon: new Icon(
                    Icons.keyboard_arrow_right,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 1.5,
            ),
            // Appearance
            Row(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.remove_red_eye,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Appearance",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                IconButton(
                  icon: new Icon(
                    Icons.keyboard_arrow_right,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            // Support
            Divider(
              height: 20,
              thickness: 1.5,
            ),
            Row(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.headset_mic,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Support",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                IconButton(
                  icon: new Icon(
                    Icons.keyboard_arrow_right,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 1.5,
            ),
            // Report Bug
            Row(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.bug_report,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Report Bug",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                IconButton(
                  icon: new Icon(
                    Icons.keyboard_arrow_right,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 1.5,
            ),
            Row(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.group,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "About",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                IconButton(
                  icon: new Icon(
                    Icons.keyboard_arrow_right,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            //Terms and Conditions
            Divider(
              height: 20,
              thickness: 1.5,
            ),
            Row(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.settings_ethernet,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Terms and Conditions",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                IconButton(
                  icon: new Icon(
                    Icons.keyboard_arrow_right,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 1.5,
            ),
            Row(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.feedback,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Give feedback",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                IconButton(
                  icon: new Icon(
                    Icons.keyboard_arrow_right,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
