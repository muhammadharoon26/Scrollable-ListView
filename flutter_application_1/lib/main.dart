import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Tree for a Simple UI',
      home: ScrollableListView(),
    );
  }
}

class ScrollableListView extends StatelessWidget {
  List<String> items = List<String>.generate(10, (i) => "Item # ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Debugging"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            // margin: EdgeInsets.all(10),
            elevation: 10,
            child: ListTile(
              leading: Icon(Icons.warning),
              title: Text(items[index]),
              subtitle: Text('Description of ${items[index]}'),
            ),
            color: const Color.fromARGB(255, 167, 0, 0),
          );
        },
      ),
    );
  }
}
