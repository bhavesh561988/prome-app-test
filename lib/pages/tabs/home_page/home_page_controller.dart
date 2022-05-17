import 'package:get/get.dart';

class HomePageController extends GetxController {
  final count = 0.obs;
  RxBool isChecked = false.obs;
  DateTime date = DateTime.now();

  @override
  void onReady() async {}

  @override
  void onClose() {}

  increment() => count.value++;
}
