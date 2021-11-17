import 'package:flutter/material.dart';

class Row_Dish extends StatelessWidget {
  const Row_Dish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Container(
              child: Icon(
            Icons.add,
            size: 40.0,
          )),
          Container(
            //transform: Matrix4.rotationZ(0.1),
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  //offset: new Offset(6.0, 6.0),
                ),
              ],
            ),
            child: Text(
              "React.js",
              style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.green),
            child: Text(
              "Flutter",
              style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.green),
            child: Text(
              "MySQL",
              style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}

class Zee_Center_Concept extends StatelessWidget {
  const Zee_Center_Concept({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 50),
            ),
            onPressed: null,
            child: const Text('Disable'),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 50),
            ),
            onPressed: () {},
            child: const Text('Enabled'),
          ),
          OutlinedButton(
            onPressed: () {
              print('Received click');
            },
            child: const Text('Click Me'),
          ),
        ],
      ),
    );
  }
}

class Zee_Row_Col extends StatelessWidget {
  const Zee_Row_Col({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Col 1'),
              Text('Col 2'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Row 1'),
                  Text('Row 2'),
                  Text('Row 3'),
                ],
              ),
              Text('Col 3'),
            ],
          ),
        ),
      ),
    );
  }
}

class Zee_Row_Icons extends StatelessWidget {
  const Zee_Row_Icons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.home,
                color: Colors.green[500],
                size: 70.0,
              ),
              Icon(
                Icons.star,
                color: Colors.red[500],
                size: 70.0,
              ),
              Icon(
                Icons.room_service,
                color: Colors.blue[500],
                size: 70.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Zee_Icon_List extends StatelessWidget {
  const Zee_Icon_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.greenAccent),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Zee App Dev'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.red[500],
                    size: 60.0,
                  ),
                  const Text('Home'),
                  const Text('20 min'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.car_rental,
                    color: Colors.red[500],
                    size: 60.0,
                  ),
                  const Text('Car'),
                  const Text('10 min'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.bed_sharp,
                    color: Colors.red[500],
                    size: 60.0,
                  ),
                  const Text('Home'),
                  const Text('20 min'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Zee_Boxes extends StatelessWidget {
  const Zee_Boxes({Key? key}) : super(key: key);
  static const String _title1 = 'My name is Zeeshan';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('I am App Bar'),
        ),
        body: Center(
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.symmetric(horizontal: 50.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text('Text 1'),
                  const Text('Text 2'),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Enabled'),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: const Text('Enabled'),
                  ),
                ],
              ),
              const Text('Text 1'),
              const Text('Text 2'),
            ],
          ),
        ),
      ),
    );
  }
}
