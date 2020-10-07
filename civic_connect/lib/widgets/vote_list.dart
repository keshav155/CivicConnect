import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:civic_connect/state/vote.dart';
import 'package:civic_connect/models/vote.dart';

class VoteListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Function alternateColor = getAlternate(start: 0);
    String activeVoteID =Provider.of<VoteState>(context).activeVote?.voteID ?? '';

    return Consumer<VoteState>(
        builder: (context, voteState, child) {
          return Column(
            children: <Widget>[
              for (Vote vote in voteState.voteList)
                Card(
                  child: ListTile(
                    title: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        vote.voteTitle,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    selected: activeVoteID == vote.voteID ? true : false,
                    onTap: () {
                      Provider.of<VoteState>(context).activeVote = vote;
                    },
                  ),
                  color: activeVoteID == vote.voteID
                      ? Colors.white24
                      : alternateColor(),
                ),
            ],
          );
        }
    );
  }

  Function getAlternate({int start = 0}) {
    int indexNum = start;

    Color getColor() {
      Color color = Colors.white70;

      if (indexNum % 2 == 0) {
        color = Colors.white60;
      }
      ++indexNum;
      return color;
    }

    return getColor;
  }
}

