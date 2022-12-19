import 'package:get/get.dart';

import '../model/model.dart'; //memanggil semua package yang ada di getx

class CounterGetX extends GetxController {
  var count = 0.obs;
  //obs = observable/memantau
  void increment() => count++;
  //++ = increment

  void decrement() => count.value + 1;
  //value = nilai + 1
}

class Counter_people {
  var myname;
  Counter_people({this.myname});
}

class Counter_people_model extends GetxController {
  var model_people = modelPeople(myname: 'tesssss').obs;

  void chageUppercase() {
    model_people.update((_) {
      model_people.value.myname = model_people.value.myname.toUpperCase();
    });
  }
}
