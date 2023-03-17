import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/log_module/logController.dart';
import 'package:test_flutter/modules/log_module/widget/LogDialog.dart';

import 'widget/BottomSheetLogFilter.dart';

class LogView extends GetView<LogController> {
  const LogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: GetX<LogController>(
            init: Get.find<LogController>(),
            builder: (LogController controller) {
              return ListView.builder(
                itemCount: controller.logList.value.length,
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () => Get.defaultDialog(
                        title: controller.getTitle(controller.logList.value[index].type),
                        content: LogDialog(
                          logModel: controller.logList.value[index],
                        )),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Icon(
                          controller
                              .getIcon(controller.logList.value[index].type),
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      title: Text(
                        controller
                            .getTitle(controller.logList.value[index].type),
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.fontSize),
                      ),
                      subtitle: Text(
                        controller.logList.value[index].description,
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.fontSize),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        onPressed: () => Get.bottomSheet(BottomSheetLogFilter()),
        child: Icon(
          Icons.filter_alt,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
