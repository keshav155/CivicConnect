import 'package:civic_connect/widgets/UserBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:provider/provider.dart';
import 'package:civic_connect/models/vote.dart';
import 'package:civic_connect/state/vote.dart';

class ResultScreen extends StatelessWidget {
  static const String id = 'Result_Screen';
  const ResultScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height / 2,
      child: createChart(context),
    );
  }

  Widget createChart(BuildContext context) {
    return new charts.PieChart(
        retrieveVoteResult(context),
        animate: true,
        defaultRenderer: new charts.ArcRendererConfig(arcRendererDecorators: [
          new charts.ArcLabelDecorator(
              labelPosition: charts.ArcLabelPosition.outside)
        ]));
  }

  List<charts.Series<VoteData, String>> retrieveVoteResult(BuildContext context) {
    Vote activeVote = Provider
        .of<VoteState>(context, listen: false)
        .activeVote;

    List<VoteData> data = List<VoteData>();
    for (var option in activeVote.options) {
      option.forEach((key, value) {
        data.add(VoteData(key, value));
      });
    }


    return [
      charts.Series<VoteData, String>(
        id: 'VoteResult',
        colorFn: (_, pos) {
          if (pos % 2 == 0){
            return charts.MaterialPalette.green.shadeDefault;
          }
          return charts.MaterialPalette.blue.shadeDefault;
        },
        domainFn: (VoteData vote, _) => vote.option,
        measureFn: (VoteData vote, _) => vote.total,
        data:data,
      )
    ];
  }
}

class VoteData {
  final String option;
  final int total;

  VoteData(this.option, this.total);
}