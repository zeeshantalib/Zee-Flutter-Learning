import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 100.0),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Zee App',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const TextField(
                  //controller:  nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                //padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                padding: const EdgeInsets.all(10.0),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text('Forgot Password'),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                ),
              ),
              Container(
                child: Row(children: <Widget>[
                  Text('Do you have an Account?'),
                  TextButton(
                    onPressed: () {
                      //signup screen
                    },
                    child: Text('Sign in', style: TextStyle(fontSize: 20)),
                  )
                ], mainAxisAlignment: MainAxisAlignment.center),
              )
            ],
          )),
    );
  }
}
