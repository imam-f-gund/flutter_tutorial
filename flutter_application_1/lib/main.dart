import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Hello Word"),
        ),
        body: Center(
            child: Container(
                color: Colors.blueAccent,
                width: 150,
                height: 50,
                child: Text(
                  "Hello Word Hello Word Hello Word",
                  style: TextStyle(
                      color: Colors.white, fontStyle: FontStyle.italic),
                ))),
      ),
    );
  }
}
