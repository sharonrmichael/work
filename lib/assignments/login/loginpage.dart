import 'package:flutter/material.dart';
import 'package:flutternov/assignments/login/main.dart';
import 'package:flutternov/assignments/login/signup.dart';
import 'package:flutternov/assignments/login/welcome.dart';

class LoginForms extends StatefulWidget {
  const LoginForms({super.key});

  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State {
  var formkeys = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkeys,
        child: ListView(
          children: [
            ListTile(
              leading: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Splash()));
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
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "Welcome back ! Login with your credentials",
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
                    return 'Enter a valid Email';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkeys.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Welcome()));
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
                  const Text('Dont have a account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hello()));
                    },
                    child: const Text("SignUp"),
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