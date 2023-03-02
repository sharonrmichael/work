import 'package:flutter/material.dart';

import 'list with builder.dart';
import 'list page.dart';

void main() {
  runApp(MaterialApp(
    home: MyTab(),
    // theme: ThemeData(
    //   colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xff2e7d32))
    // ),
    debugShowCheckedModeBanner: false,));
}

class MyTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[800],
            title:const Text("My Tab Bar"),
            actions:  [
              const Icon(Icons.camera_alt),
              const SizedBox(width: 20,),
              const Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context){
                return[
                  const PopupMenuItem(child: Text("Newgroup")),
                  const PopupMenuItem(child: Text("NewBroadcast")),
                  const PopupMenuItem(child: Text("Settings")),
                ];
              })
            ],
            bottom:   TabBar(
                labelPadding: EdgeInsets.zero,
                isScrollable: true,
                // unselectedLabelColor: Colors.yellow,
                indicatorSize: TabBarIndicatorSize.label,
                //   indicator: BoxDecoration( ) ,
                // indicatorColor: Colors.black,
                tabs:[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                    child: const Tab(icon: Icon(Icons.people,size: 30,),),),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*.3,
                      child: const Tab(text: "Chats")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*.3,
                      child: const Tab(text: "Status")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*.3,
                      child: const Tab(text: "Call"))
                ]) ,
          ),
          body:  TabBarView(
            children: [
              const Center(child: Text("Community"),),
              const Center(child: Text("Chats"),),
              List_with_Builder(),
              ListPage(),

            ],

          ),
        )
    );
  }

}