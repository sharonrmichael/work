import 'package:flutter/material.dart';
import 'package:flutternov/assignments/login/loginpage.dart';
import 'package:flutternov/assignments/login/main.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  var formkey = GlobalKey<FormState>();
  var passwordtest;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            ListTile(
              leading: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Splash()));
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.brown,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 75),
              child: ListTile(
                title: Text(
                  "Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "Create an account,its free",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.next,
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('@')) {
                    return 'Enter a valid UserName';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.done,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'Enter a valid password , length  should be greater than 6';
                  } else {
                    return null;
                  }
                },
                onChanged: (value) => passwordtest = value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.next,
                validator: (cpassword) {
                  if (cpassword != passwordtest) {
                    return 'Password didnt match';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginForms()));
                    } else {
                      return;
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(60, 50),
                      backgroundColor: Colors.brown.shade500,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Text('Login')),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have a account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginForms()));
                    },
                    child: const Text("Login"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}