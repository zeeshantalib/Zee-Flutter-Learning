import 'package:flutter/material.dart';
import 'package:zee_learning/Login_Signup/project_4/login_page.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Zeeshan Talib',
        style: TextStyle(
          fontSize: 28.0,
          color: Colors.black,
        ),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Mr. Zeeshan Talib, we are very glad to see you here and Thanks to your ZEAS Technologies team.',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
      ),
    );
    final loginButton = Padding(
      //padding: EdgeInsets.symmetric(vertical: 16.0),
      padding: EdgeInsets.all(20.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        child: Text(
          "Log In",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );

    final loginButton1 = Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        color: Colors.blue,
        child: Text(
          'LOGIN',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(30.0),
      /* decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.lightBlueAccent,
          ],
        ),
      ), */
      child: Column(
        children: <Widget>[
          alucard,
          welcome,
          lorem,
          loginButton,
          loginButton1,
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(),
      body: body,
    );
  }
}
