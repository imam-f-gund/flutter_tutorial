import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/controller_countergetx.dart';

class MypagesCounter extends StatefulWidget {
  @override
  State<MypagesCounter> createState() => _MypagesCounterState();
}

class _MypagesCounterState extends State<MypagesCounter> {
  final counterC = Get.put(CounterGetX());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Obx(() => Text('Angka ${counterC.count}'))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterC.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
