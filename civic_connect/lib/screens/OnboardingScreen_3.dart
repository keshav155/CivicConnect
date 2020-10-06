import 'package:flutter/material.dart';
import 'package:onboarding/pages/OnboardingScreen_4.dart';

class OnboardingScreen3 extends StatefulWidget {
  static const String id = 'Onboarding_Screen3';
  @override
  _OnboardingScreen3State createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: 28,
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: Text('CivicConnect')
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 420.0,
            height: 310.0,
            padding: EdgeInsets.only(top:15.0),
            child: Image(
              image: AssetImage('assets/vote.png'),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Track your decisions easily and',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Text(
                  'find our what your community wants',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

          ),
          Container(
            padding: EdgeInsets.only(left: 140.0, right: 140.0, bottom: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: [
                Icon(
                  Icons.lens,
                  size:10,
                  color: Colors.grey[400],
                ),
                Icon(
                  Icons.lens,
                  size:10,
                  color: Colors.grey[400],
                ),
                Icon(
                  Icons.lens,
                  size:10,
                  color: Colors.grey[400],
                ),
                Icon(
                  Icons.lens,
                  size:10,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.lens,
                  size:10,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(vertical:10),
            width: 220.0,
            height: 45.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              ),

              color: Colors.white,
              onPressed: () {
                Navigator.push(context, SlideRightRoute(page: OnboardingScreen4()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '  Next   ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal:20, vertical:12),
            width: 220.0,
            height: 45.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              color: Colors.blue,
              onPressed: null,

              child: Text(
                  'Let\'s Get Started',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,)
              ),
            ),
          ),

        ],
      ),
    );
  }
}


class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1,0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}