import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  final CardSwiperController cardController = CardSwiperController();
  RxBool isLoggedIn = false.obs;
  RxBool isSelected = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
