import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Latihan Animation Container"),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Container(width: 80, height: 80, color: Colors.red),
            Spacer(
              flex: 1,
            ),
            Container(width: 80, height: 80, color: Colors.amber),
            Spacer(
              flex: 2,
            ),
            Container(width: 80, height: 80, color: Colors.blueGrey),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    ));
  }
}
