import 'package:flutter/material.dart';

void main1122() {
  runApp(
    MyApp1(
      items: List<String>.generate(100, (i) => 'Item $i'),
    ),
  );
}

class MyApp1 extends StatelessWidget {
  final List<String> items;

  const MyApp1({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            }),
      ),
    );
  }
}
