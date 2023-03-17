import 'package:get/get.dart';

class HomeController extends GetxController {

  RxBool showInfo = false.obs;

  setShowInfo() => showInfo.value = !showInfo.value;


}