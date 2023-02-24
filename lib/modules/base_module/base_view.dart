import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/base_module/base_controller.dart';
import 'package:test_flutter/modules/chat_module/ChatView.dart';
import 'package:test_flutter/modules/home_module/HomeView.dart';
import 'package:test_flutter/modules/log_module/LogView.dart';
import 'package:test_flutter/modules/profile_module/ProfileView.dart';

import '../../src/shared/widgets/AnimatedBottomDrawer.dart';

class BaseView extends GetView<BaseController> {
  BaseView({super.key});

  final List<Widget> _mainContents = [
    const HomeView(),
    const LogView(),
    const ChatView(),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nome da Empresa'),
      ),
      body: SafeArea(
          child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Obx(() => _mainContents[controller.page]),
      )),
      bottomNavigationBar: const AnimatedBottomDrawer(),
    );
  }
}
