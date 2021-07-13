import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ChatPage.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin{
   late TabController _controller;
  @override
  void initState() {

    super.initState();
    _controller= TabController(length: 4, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(icon: Icon(Icons.search),onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
        ],
        bottom: TabBar(
          controller:   _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),

          ],
        )
      ),
      body: TabBarView(
        controller: _controller,
         children: [
           Text("Camera"),
            ChatPage(),
           Text("Status"),
           Text("Calls"),
      ],
      ),
    );
  }
}
