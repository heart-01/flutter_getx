import 'package:get/get.dart';

class AppController extends GetxController {
  // Rx = Reactive for store state
  RxInt counter = 0.obs; // variable counter type int and initial value 0 obs = observable (reactive)

  void increment() => counter++;
}
