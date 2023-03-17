import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/base_module/base_controller.dart';
import 'package:test_flutter/src/shared/themes/color_schemes.g.dart';
import 'package:test_flutter/src/shared/utils/enums.dart';

class AnimatedBottomDrawer extends GetView<BaseController> {
  const AnimatedBottomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => NavigationBar(
      onDestinationSelected: (v) => controller.setPage(PagesEnum.values[v]),
      selectedIndex: controller.page,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home_outlined),selectedIcon: (Icon(Icons.home)), label: "Home"),
        NavigationDestination(icon: Icon(Icons.table_chart_outlined), selectedIcon: (Icon(Icons.table_chart)),label: "Resumo"),
        NavigationDestination(icon: Icon(Icons.pages_outlined), selectedIcon: (Icon(Icons.pages)),label: "Logs"),
        NavigationDestination(icon: Icon(Icons.person_outline), selectedIcon: (Icon(Icons.person)),label: "Perfil")
      ],
    ));
  }
}
