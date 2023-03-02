import 'package:flutter/material.dart';
import 'package:flutternov/assignments/whatsapp/call.dart';
import 'package:flutternov/assignments/whatsapp/chats.dart';
import 'package:flutternov/assignments/whatsapp/status.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: My_tab(),
  ));
}

class My_tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(2, 94, 84, 100),
          title: const Text("WhatsApp"),
          actions: const [
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom: const TabBar(tabs: [

            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: " CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ]),
        ),
        body: TabBarView(
          children: [
            const Center(
              child: Text("Please allow permission to use camera"),
            ),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}