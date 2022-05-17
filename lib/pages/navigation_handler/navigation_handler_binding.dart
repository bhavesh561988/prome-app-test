import 'package:get/get.dart';
import 'navigation_handler_controller.dart';

class NavigationHandlerBinding extends Bindings {
    @override
    void dependencies() {
    Get.lazyPut<NavigationHandlerController>(() => NavigationHandlerController());
    }
}
