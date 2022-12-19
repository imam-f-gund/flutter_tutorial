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
  // getx function out file
  final counterC = Get.put(CounterGetX());
  final people = Get.put(Counter_people_model());
  var counterP = Counter_people(myname: 'tess').obs;

  // getx function in file
  var count = 0.obs;
  void add() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Obx(() => Text('Angka out file ${counterC.count}'))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Obx(() => Text('Angka in file $count'))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Obx(() => Text('Nama Saya ${counterP.value.myname}'))),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 500.0, 8.0, 8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      counterC.increment();
                    },
                    tooltip: 'GetX Two',
                    child: const Icon(Icons.add),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () => add(),
                    tooltip: 'GetX One',
                    child: const Icon(Icons.add),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      people.chageUppercase();
                      // counterP.update((val) {
                      //   counterP.value.myname =
                      //       counterP.value.myname.toString().toUpperCase();
                      // });
                      counterP.update((val) {
                        val!.myname = val.myname.toString().toUpperCase();
                      });
                    },
                    tooltip: 'GetX three',
                    child: const Icon(Icons.add),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      Get.changeTheme(ThemeData.light());
                    },
                    tooltip: 'Get light',
                    child: const Icon(Icons.add),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      Get.changeTheme(ThemeData.dark());
                    },
                    tooltip: 'Get dark',
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
