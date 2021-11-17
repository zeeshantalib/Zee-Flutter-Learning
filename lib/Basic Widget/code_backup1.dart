import 'package:flutter/material.dart';

class Zee_Input_Value_1 extends StatelessWidget {
  TextEditingController inputcontroller = TextEditingController();
  String getvalue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Zee App Input"),
          backgroundColor: Colors.red[900],
        ),
        body: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Please enter your name'),
                TextField(
                  controller: inputcontroller,
                  decoration: InputDecoration(
                    //border: InputBorder.none,
                    hintText: 'Enter a value',
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    getvalue = inputcontroller.text;
                  },
                  child: Text('Get Value'),
                ),
                //Text(getvalue!=null?'$getvalue':''),
                Text(getvalue),
              ],
            ),
          ),
        ));
  }
}

class Zee_Input_Value_2 extends StatelessWidget {
  var name, age;

  final name_con = TextEditingController();
  final age_con = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Zee App Input"),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: name_con,
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: age_con,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Your Age',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  name = name_con.text;
                  age = age_con.text;
                },
                child: Text('Submit'),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Name: $name Age: $age'),
            ],
          ),
        ),
      ),
    );
  }
}
