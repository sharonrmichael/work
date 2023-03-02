import 'package:flutter/material.dart';

class Chats extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ListTile(title: Text('alan'),subtitle: Text("hiiii"),leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/31/19/58/avatar-1295431_1280.png"),),trailing: Text("22:13")),
          ListTile(title: Text('jishnu'),subtitle: Text("Nale class eppozha?"),leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295396_1280.png"),),trailing: Text("18:25")),
          ListTile(title: Text('krishnan'),subtitle: Text("code onn ayakavo."),leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295401_1280.png"),),trailing: Text("14:20"),),
          ListTile(title: Text('tinu'),subtitle: Text("nale verule?"),leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295389_1280.png"),),trailing: Text("09:45")),
          ListTile(title: Text('amal'),subtitle: Text("eda aa pic ayak"),leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295394_1280.png"),),trailing: Text("Yesterday"),)
        ],
      ),
    );
  }

}