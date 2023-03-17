import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/base_module/base_controller.dart';
import 'package:test_flutter/modules/home_module/home_view.dart';
import 'package:test_flutter/modules/log_module/LogView.dart';
import 'package:test_flutter/modules/profile_module/profile_view.dart';

import '../../src/shared/widgets/AnimatedBottomDrawer.dart';
import '../charts_module/charts_view.dart';

class BaseView extends GetView<BaseController> {
  BaseView({super.key});

  final List<Widget> _mainContents = [
    const HomeView(),
    const ChartsView(),
    const LogView(),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Column(
          children: [
            Text(
              'Saint Gobain',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.displaySmall?.fontSize),
            ),
            Text(
              '2022',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.labelSmall?.fontSize),
            ),
          ],
        ),
      ),
      body: Obx(
        () => SafeArea(
            child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _mainContents[controller.page],
        )),
      ),
      bottomNavigationBar: const AnimatedBottomDrawer(),
    );
  }
}
