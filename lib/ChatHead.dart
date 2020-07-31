import 'package:chat_app/ChatView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatHead extends StatefulWidget {
  @override
  _ChatHeadState createState() => _ChatHeadState();

  //
  final String friendName;
  //
  final String lastMessage;
  //
  final DateTime messageTime;

  ChatHead({
    Key key,
    this.friendName: '',
    this.lastMessage: '',
    this.messageTime,
  }) : super(key: key);
}

class _ChatHeadState extends State<ChatHead> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.of(context).push(MaterialPageRoute<Null>(
          builder: (BuildContext context) {
            return ChatView(
              friendName: widget.friendName,
              lastMessage: widget.lastMessage,
            );
          },
          fullscreenDialog: false,
        ));
        print(widget.friendName + " has been tapped");
      },
      highlightColor: Colors.blue[700],
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          width: double.infinity,
          height: 100.0,
          // color: Colors.grey[300],
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      widget.friendName,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      widget.lastMessage,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(widget.messageTime.toString()),
                  ],
                ),
              ),
              // Center(
              //  child:
              CircleAvatar(
                radius: 32.0,
                child: Text(
                  widget.friendName.substring(0, 1), // Get friend's initial
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .apply(color: Colors.white, fontWeightDelta: 3),
                ),
              ),
              //  ),
            ],
          )),
    );
  }
}
