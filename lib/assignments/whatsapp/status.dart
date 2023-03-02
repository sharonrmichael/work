import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const ListTile(
              title: Text('My Status'),
              subtitle: Text("Tap to add Status Updates"),
              leading: Image(
                image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/983/983901.png"),
                color: Colors.green,
              )),
          Container(
              height: 30,
              color: Colors.grey.shade200,
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Recent updates",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              )),
          const ListTile(
            title: Text('alan'),
            subtitle: Text("24 minutes ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2016/03/31/19/58/avatar-1295431_1280.png"),
            ),
          ),
          const ListTile(
              title: Text('jishnu'),
              subtitle: Text("57 minutes ago"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295396_1280.png"),
              )),
          Container(
              height: 30,
              color: Colors.grey.shade200,
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Viewed updates",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              )),
          const ListTile(
            title: Text('krishnan'),
            subtitle: Text("59 minutes ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295401_1280.png"),
            ),
          ),
          const ListTile(
              title: Text('tinu'),
              subtitle: Text("Yesterday, 23:44"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295389_1280.png"),
              )),
          const ListTile(
            title: Text('amal'),
            subtitle: Text("Yesterday, 22:43"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295394_1280.png"),
            ),
          ),
          const ListTile(
            title: Text('salih'),
            subtitle: Text("yesterday, 23,42"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295401_1280.png"),
            ),
          ),
          const ListTile(
              title: Text('sooraj'),
              subtitle: Text("Yesterday, 23:41"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295389_1280.png"),
              )),
          const ListTile(
            title: Text('sudhi'),
            subtitle: Text("Yesterday, 22:40"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295394_1280.png"),
            ),
          )
        ],
      ),
    );
  }
}