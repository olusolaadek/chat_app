import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatHead extends StatefulWidget {
  @override
  _ChatHeadState createState() => _ChatHeadState();
}

class _ChatHeadState extends State<ChatHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
        width: double.infinity,
        height: 100.0,
        color: Colors.grey[300],
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "<Friend's Name>",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    "Last Message",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text("Last nessage time"),
                ],
              ),
            ),
            // Center(
            //  child:
            CircleAvatar(
              radius: 32.0,
              child: Text(
                "T",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .apply(color: Colors.white, fontWeightDelta: 3),
              ),
            ),
            //  ),
          ],
        ));
  }
}
