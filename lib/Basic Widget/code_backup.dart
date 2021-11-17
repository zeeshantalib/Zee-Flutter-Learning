import 'package:flutter/material.dart';

class Zee_Show_Image extends StatelessWidget {
  @override
  Widget build(BuildContextcontext) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('ZeeshanApp'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    );
  }
}

class Zee_Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Row(
            //verticalDirection: VerticalDirection.up,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100.0,
                //width: 100.0,
                //width: double.infinity,
                color: Colors.white,
                child: Text('Contianer 1'),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                height: 100.0,
                //width: 100.0,
                //width: double.infinity,
                color: Colors.blue,
                child: Text('Contianer 2'),
              ),
              Container(
                height: 100.0,
                //width: 100.0,
                //width: double.infinity,
                color: Colors.green,
                child: Text('Contianer 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Zee_Button_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zee Button", style: TextStyle(fontFamily: 'RobotoBlack')),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton.icon(
          onPressed: () {
            print('Clicked');
          },
          icon: Icon(
            Icons.mail,
          ),
          label: Text('Mail Me'),
          color: Colors.amber,
        ),
      ),
    );
  }
}

class Zee_Page_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Zee_Page_2()));
          },
          child: Text('Open page 2'),
        ),
      ),
    );
  }
}

class Zee_Page_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page1()
            //)
            //);
            Navigator.pop(context);
          },
          child: Text('Open page 1'),
        ),
      ),
    );
  }
}
