import 'package:chat_app/ChatHead.dart';
import 'package:chat_app/ChatView.dart';
import 'package:flutter/material.dart';

class MyChatApp extends StatefulWidget {
  @override
  _MyChatAppState createState() => _MyChatAppState();
}

class _MyChatAppState extends State<MyChatApp> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // return Container({Text('Text here')});
    return MaterialApp(
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Chat App"),
      //     actions: <Widget>[
      //       IconButton(
      //         icon: Icon(Icons.help),
      //         onPressed: () {
      //           print('Button was pressed');
      //         },
      //       ),
      //     ],
      //   ),
      //   body: ListView(
      //     children: <Widget>[
      //       ChatHead(),
      //       ChatHead(),
      //       ChatHead(),
      //     ],
      //   ),
      //   bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _currentIndex,
      //     items: <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home), title: Text("Home")),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.mail_outline), title: Text("Chats")),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.settings), title: Text("Settings")),
      //     ],
      //     onTap: (int index) => {
      //       print('Index is $index'),
      //       setState(() {
      //         _currentIndex = index;
      //       }),
      //       //setState(())
      //       // _currentIndex = index
      //     },
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       print('FAB was pressed');
      //     },
      //     child: Icon(Icons.add),
      //   ),
      // ),

      home: ChatView(),
    );
  }
}
