// ignore: unused_import
import 'package:chat_app/ChatHead.dart';
import 'package:chat_app/ChatView.dart';
import 'package:flutter/material.dart';

class MyChatApp extends StatefulWidget {
  @override
  _MyChatAppState createState() => _MyChatAppState();
}

class _MyChatAppState extends State<MyChatApp> {
  // ignore: unused_field
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // return Container({Text('Text here')});
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Chat App"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.help),
              onPressed: () {
                print('Button was pressed');
              },
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            ChatHead(
              friendName: "Michael",
              lastMessage: "I will do the snap im a while",
              messageTime: DateTime.now(),
            ),
            ChatHead(
              friendName: "Friend of Peace",
              lastMessage: "Please tell Naomi not to do it",
              messageTime: DateTime.now(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail_outline), title: Text("Chats")),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("Settings")),
          ],
          onTap: (int index) => {
            print('Index is $index'),
            setState(() {
              _currentIndex = index;
            }),
            //setState(())
            // _currentIndex = index
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FAB was pressed');
          },
          child: Icon(Icons.add),
        ),
      ),

      // home: ChatView(),
    );
  }
}
