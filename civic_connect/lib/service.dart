import 'package:civic_connect/models/vote.dart';
import 'package:uuid/uuid.dart';

List<Vote> getVoteList() {
  //Mock Data
  List <Vote> voteList = List<Vote>();

  voteList.add(Vote(
    voteID: Uuid().v4(),
    voteTitle: 'Reopen the Burwood Library',
    options: [
      {'Yes': 10},
      {'No': 70},
    ],
  ));

  voteList.add(Vote(
    voteID: Uuid().v4(),
    voteTitle: 'Parking Lot',
    options: [
      {'Yes': 50},
      {'No': 30},
    ],
  ));

  return voteList;
}