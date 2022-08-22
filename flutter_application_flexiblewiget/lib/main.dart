import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Latihan Flexible Wiget"),
            ),
            body: Column(
              children: <Widget>[
                Flexible(
                  child: Row(children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.amber,
                          margin: EdgeInsets.all(5),
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.green,
                          margin: EdgeInsets.all(5),
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                          margin: EdgeInsets.all(5),
                        )),
                  ]),
                ),
                Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.yellow,
                      margin: EdgeInsets.all(5),
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      margin: EdgeInsets.all(5),
                    )),
              ],
            )));
  }
}
