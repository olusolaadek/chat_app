import 'package:chat_app/ChatMessages.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();

  final String friendName;
  final String lastMessage;

  ChatView({Key key, this.friendName: "", this.lastMessage: ""})
      : super(key: key);
}

class _ChatViewState extends State<ChatView> {
  String _friendInitial;

  TextEditingController _controller = new TextEditingController();

  @override
  void initState() {
    setState(() {
      _friendInitial = widget.friendName.substring(0, 1);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friend's name here"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView(
              children: <Widget>[
                ChatMessages(
                  isFriend: true,
                  isNotPrevious: true,
                  friendInitial: _friendInitial,
                  message: "I really need some food",
                ),
                // ChatMessages(
                //   isFriend: false,
                //   isNotPrevious: true,
                //   friendInitial: _friendInitial,
                // ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                      hintText: "Type your message here",
                      labelText: "Your message",
                      helperText: "Here's where the message goes"),
                )),
                IconButton(
                    icon: Icon(
                      Icons.send,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      print('send message tapped >> ' + _controller.text);
                    }),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child:
      // ),
    );
  }
}
