import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:civic_connect/widgets/vote.dart';
import 'package:civic_connect/widgets/vote_list.dart';
import 'package:provider/provider.dart';
import 'package:civic_connect/models/vote.dart';
import 'package:civic_connect/state/vote.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'Home_Screen';
  const HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentStep = 0;

  @override
  void initState() {
    super.initState();

    //loading votes
    Future.microtask(() {
      Provider.of<VoteState>(context, listen: false).clearState();
      Provider.of<VoteState>(context, listen: false).loadVoteList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stepper(
              type: StepperType.horizontal,
              currentStep: _currentStep,
              steps: [
                getStep(
                  title: 'Choose',
                  child: VoteListWidget(),
                  isActive: true,
                ),
                getStep(
                  title: 'Vote',
                  child:  VoteWidget(),
                  isActive: _currentStep >= 1 ? true : false,
                ),
              ],
              onStepContinue: (){
                if (_currentStep == 0) {
                  if (step2Required()) {
                    setState(() {
                      _currentStep =
                      (_currentStep + 1) > 1 ? 1 : _currentStep + 1;
                    });
                  } else {
                    showSnackBar(context, 'Please Select an option');
                  }
                } else if (_currentStep == 1) {
                  if (step3Required()) {
                    Navigator.pushReplacementNamed(context, '/result');
                  } else {
                    showSnackBar(context, 'Please mark your vote');
                  }
                }
                setState(() {
                  _currentStep = (_currentStep + 1) > 1 ? 1 : _currentStep + 1;
                });
              },
              onStepCancel: (){
                if (_currentStep <= 0) {
                  Provider.of<VoteState>(context).activeVote = null;
                } else if (_currentStep <= 1) {
                  Provider.of<VoteState>(context).selectedOptionInActiveVote =
                  null;
                }

                setState(() {
                  _currentStep = (_currentStep - 1) < 0 ? 0 : _currentStep - 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  // ignore: missing_return
  bool step2Required() {
    if (Provider.of<VoteState>(context).activeVote == null){
      return false;
    }

    return true;
  }

  bool step3Required() {
    if (Provider.of<VoteState>(context).selectedOptionInActiveVote == null){
      return false;
    }

    return true;
  }

  void showSnackBar(BuildContext context, String msg) {
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(
            msg,
            style: TextStyle(fontSize: 22),
          ),
        ));
  }

  Step getStep({String title, Widget child, bool isActive = false}) {
    return Step(
      title: Text(title),
      content: child,
      isActive: isActive,
    );
  }
}




