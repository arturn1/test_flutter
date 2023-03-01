import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base_module/base_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final BaseController baseController = Get.find();

    return ObxValue(
          (data) => Switch(
        value: baseController.isLightTheme,
        onChanged: (val) {
          baseController.setIsLightTheme(val);
          Get.changeThemeMode(
            baseController.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          );
          baseController.saveThemeStatus();
        },
      ),
      false.obs,
    );
  }
}
