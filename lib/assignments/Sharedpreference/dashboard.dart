import 'package:flutter/material.dart';
import 'package:flutternov/assignments/Sharedpreference/sharedpreference_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preference Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyDashboard(),
    );
  }
}
class MyDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}
class _MyDashboardState extends State<MyDashboard> {

  late SharedPreferences logindata;
  late String username;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[100],
      appBar: AppBar(
        title: const Text("Shared Preference"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Hai $username Welcome',
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                logindata.setBool('login', true);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyLoginPage()));
              },
              child: const Text('LogOut'),
            )
          ],
        ),
      ),
    );
  }
}