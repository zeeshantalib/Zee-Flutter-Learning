import 'package:flutter/material.dart';

class Zee_Button extends StatefulWidget {
  const Zee_Button({Key? key}) : super(key: key);

  @override
  _Zee_ButtonState createState() => _Zee_ButtonState();
}

class _Zee_ButtonState extends State<Zee_Button> {
  String msg = 'Flutter RaisedButton';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button App'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.camera_alt), onPressed: () => {}),
            IconButton(icon: Icon(Icons.account_circle), onPressed: () => {})
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text(
                  'SignUp',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  'SignUp',
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {},
              ),
              Text(
                msg,
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              RaisedButton(
                child: Text(
                  "Click Here",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: _changeText,
                color: Colors.red,
                textColor: Colors.yellow,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _changeText() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'We have learned FlutterRaised button';
      } else {
        msg = 'Flutter RaisedButton Example';
      }
    });
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
