import 'package:flutter/material.dart';
import 'package:flutternov/assignments/Sharedpreference/sharedpreference_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: SignupScreen(),
  ));
}

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _saveCredentials(
      String name, String username, String password) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setString('username', username);
    await prefs.setString('password', password);
  }

  void _signup() {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final username = _usernameController.text;
      final password = _passwordController.text;
      _saveCredentials(name, username, password);
      // Navigate to home screen or perform any other action
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[100],
      appBar: AppBar(
        title: const Text('Sign up'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Enter Your Name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a username';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: const Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}