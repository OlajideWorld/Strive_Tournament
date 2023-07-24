import 'package:get/get.dart';
import 'package:strive/HomeScreen/controller/homecontroller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<HomeController>(HomeController());
  }
}
