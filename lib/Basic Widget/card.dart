import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        padding: EdgeInsets.all(30.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          elevation: 30,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.album,
                  size: 60,
                ),
                title: Text(
                  'Zeeshan',
                  style: TextStyle(fontSize: 30.0),
                ),
                subtitle: Text(
                  'Best of Zeeshan',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  RaisedButton(child: const Text('play'), onPressed: () {}),
                  RaisedButton(child: const Text('pause'), onPressed: () {})
                ],
              )
            ],
          ),
          color: Colors.red,
        ),
      ),
    );
  }
}
