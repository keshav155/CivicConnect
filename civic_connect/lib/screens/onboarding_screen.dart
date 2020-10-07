import 'package:civic_connect/screens/user/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  static const String id = 'Onboarding_Screen';
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LocationScreen()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/$assetName.png', width: 280.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const titleStyle = TextStyle(
        fontSize: 28.0, color: Colors.blue, fontWeight: FontWeight.w700);
    const pageDecoration = const PageDecoration(
      bodyFlex: 4,
      imageFlex: 5,
      titleTextStyle: titleStyle,
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(35.0, 5.0, 35.0, 0.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.only(top: 30.0),
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          titleWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.people,
                color: Colors.blue,
                size: 32,
              ),
              Text(
                ' CivicConnect',
                style: titleStyle,
              ),
            ],
          ),
          body: "Help your council make decisions with your opinion.",
          image: _buildImage('1'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.people,
                color: Colors.blue,
                size: 32,
              ),
              Text(
                ' CivicConnect',
                style: titleStyle,
              ),
            ],
          ),
          body: "Keep up with the latest news from your council",
          image: _buildImage('2'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.people,
                color: Colors.blue,
                size: 32,
              ),
              Text(
                ' CivicConnect',
                style: titleStyle,
              ),
            ],
          ),
          body: "Make decisions on different liveability factors",
          image: _buildImage('demo'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.people,
                color: Colors.blue,
                size: 32,
              ),
              Text(
                ' CivicConnect',
                style: titleStyle,
              ),
            ],
          ),
          body:
              "Track your decisions easily and find out what your community wants",
          image: _buildImage('vote'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.people,
                color: Colors.blue,
                size: 32,
              ),
              Text(
                ' CivicConnect',
                style: titleStyle,
              ),
            ],
          ),
          body: 'Improve the quality of life with the decisions you make',
          image: _buildImage('roots'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 2),
                blurRadius: 6.0,
                spreadRadius: 3.0),
          ],
        ),
        height: 28,
        width: 60,
        child: const Text(
          'Skip',
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),

      next: const Icon(
        Icons.arrow_forward_ios,
        size: 22,
        color: Colors.blue,
      ),
      done: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(1, 3),
                blurRadius: 6.0,
                spreadRadius: 3.0),
          ],
        ),
        height: 28,
        width: 60,
        child: const Text(
          'Done',
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),

      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.black12,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
