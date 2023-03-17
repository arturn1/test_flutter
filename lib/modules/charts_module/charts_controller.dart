import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChartsController extends GetxController with  GetSingleTickerProviderStateMixin{

  late final AnimationController animationController;
  late final Animation<double> animation = CurvedAnimation(parent: animationController,
      curve: Curves.easeInSine);

  @override
  void onInit() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this,);
  }

  RxDouble size = 200.0.obs;
  RxDouble sizeProject = 200.0.obs;
  RxBool expandProject = false.obs;
  RxBool expand = false.obs;

  setExpandProject() {
    sizeProject.value = sizeProject.value == 200 ? 330 : 200;
    expandProject.value = !expandProject.value;
  }

  setExpand() {
    size.value = size.value == 200 ? 330 : 200;
    expand.value = !expand.value;
  }


    @override
    void dispose() {
      animationController.dispose();
      super.dispose();
    }
  }
