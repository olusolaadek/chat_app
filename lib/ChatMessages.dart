import 'package:flutter/material.dart';

class ChatMessages extends StatefulWidget {
  @override
  _ChatMessagesState createState() => _ChatMessagesState();

  final bool isFriend;

  ChatMessages({
    Key key,
    this.isFriend = false,
  }) : super(key: key);
}

class _ChatMessagesState extends State<ChatMessages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      color: Colors.blue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          widget.isFriend
              ? CircleAvatar(
                  radius: 32.0,
                  backgroundColor: Colors.white,
                )
              : Container(),
          Text('Chat here'),
        ],
      ),
    );
  }
}
