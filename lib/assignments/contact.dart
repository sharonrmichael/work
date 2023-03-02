import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Contact()));
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.favorite),
        title: const Text("Favorite Contacts"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListTile(
              title: const Text('Eldho'),
              subtitle: const Text("+91-9809000000"),
              leading: const Image(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/4202/4202843.png')),
              trailing: Wrap(
                spacing: 10,
                children: const [Icon(Icons.message), Icon(Icons.call)],
              ),
            ),
          ),
          ListTile(
            title: const Text('Krishna'),
            subtitle: const Text("+91-5522445577"),
            leading: const Image(
                image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/2423/2423916.png")),
            trailing: Wrap(
              spacing: 10,
              children: const [Icon(Icons.message), Icon(Icons.call)],
            ),
          ),
          ListTile(
            title: const Text('Abu'),
            subtitle: const Text("+91-9845000000"),
            leading: const Image(
                image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/3048/3048122.png")),
            trailing: Wrap(
              spacing: 10,
              children: const [Icon(Icons.message), Icon(Icons.call)],
            ),
          ),
          ListTile(
            title: const Text('Aravindhan'),
            subtitle: const Text("+91-894700000"),
            leading: const Image(
                image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/163/163801.png")),
            trailing: Wrap(
              spacing: 10,
              children: const [Icon(Icons.message), Icon(Icons.call)],
            ),
          ),
          ListTile(
            title: const Text('Jithu'),
            subtitle: const Text("+91-974500000"),
            leading: const Image(
                image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/4202/4202839.png")),
            trailing: Wrap(
              spacing: 10,
              children: const [Icon(Icons.message), Icon(Icons.call)],
            ),
          ),
        ],
      ),
    );
  }
}