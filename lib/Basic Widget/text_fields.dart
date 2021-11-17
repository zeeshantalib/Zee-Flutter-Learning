import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyApp1 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp1> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter TextField Example'),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Sign In'),
                  //onPressed: () => _showToast(context),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (ctxt) => AlertDialog(
                              title: Text("Text Dialog"),
                              content: Text(nameController.text +
                                  " " +
                                  passwordController.text),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            ));
                  },
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Show Toast'),
                  //onPressed: () => _showToast(context),
                  onPressed: () => Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0),
                ),
              ],
            )));
  }
}

void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Added to favorite'),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}

class Text_Fields_Concept extends StatelessWidget {
  const Text_Fields_Concept({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(),
          RichText(
            text: TextSpan(
                text: 'Don\'t have an account?',
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: const <TextSpan>[
                  TextSpan(
                      text: ' Sign up',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 20))
                ]),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Name',
                hintText: 'Enter Your Name'),
          ),
          RaisedButton(
            textColor: Colors.white,
            color: Colors.blue,
            child: Text('Sign In'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
