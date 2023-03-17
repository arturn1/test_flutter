import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/base_module/base_controller.dart';
import 'package:test_flutter/modules/base_module/base_view.dart';
import 'package:test_flutter/modules/service_module/service_controller.dart';
import 'package:test_flutter/src/shared/utils/enums.dart';

class SelectServiceView extends GetView<ServiceController> {
  const SelectServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BaseController baseController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleção de Empresas'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                autofocus: false,
                cursorColor: Colors.grey,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  color: Colors.grey,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary)),
                    contentPadding: const EdgeInsets.all(10.0),
                    hintText: 'Pesquise por Nome ou Ano',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
            Expanded(
                child: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.services.value.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(BaseView());
                    baseController.setPage(PagesEnum.Home);
                  },
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Text(
                          controller.services.value[index].name[0],
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                      title: Text(
                        controller.services.value[index].name,
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.fontSize),
                      ),
                      subtitle: Text(
                        controller.services.value[index].year.toString(),
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.fontSize),
                      ),
                    ),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
