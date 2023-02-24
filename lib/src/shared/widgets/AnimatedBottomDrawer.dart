import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/base_module/base_controller.dart';
import 'package:test_flutter/src/shared/themes/color_schemes.g.dart';
import 'package:test_flutter/src/shared/utils/enums.dart';

class AnimatedBottomDrawer extends GetView<BaseController> {
  const AnimatedBottomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => NavigationBarTheme(
        data: NavigationBarThemeData(indicatorColor: lightColorScheme.primary),
        child: NavigationBar(
          onDestinationSelected: (v) => controller.setPage(PagesEnum.values[v]),
          selectedIndex: controller.page,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
            NavigationDestination(icon: Icon(Icons.pages), label: "Logs"),
            NavigationDestination(icon: Icon(Icons.chat), label: "Chat"),
            NavigationDestination(icon: Icon(Icons.person), label: "Perfil")
          ],
        )));
  }
}
