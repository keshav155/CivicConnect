import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  static const String id = 'Onboarding_Screen';

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onboarding Screen"),
      ),
    );
  }
}
