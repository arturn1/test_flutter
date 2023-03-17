import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/service_module/ServiceView.dart';

import '../base_module/base_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BaseController baseController = Get.find();

    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              height: 160,
              width: Get.width,
              child: Column(
                children: [
                  SizedBox(
                      height: 40,
                      child: Center(
                          child: Text(
                        'Saint Gobain',
                        style: TextStyle(
                          fontFamily: 'Montserrat-SemiBold',
                          fontSize:
                              Theme.of(context).textTheme.labelLarge?.fontSize,
                        ),
                      ))),
                  SizedBox(
                      height: 40,
                      child: Center(
                          child: Text(
                        '031.5416.5640/00001',
                        style: TextStyle(
                          fontFamily: 'Montserrat-SemiBold',
                          fontSize:
                              Theme.of(context).textTheme.labelLarge?.fontSize,
                        ),
                      ))),
                  SizedBox(
                      height: 40,
                      child: Center(
                          child: Text(
                        '2022',
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.labelLarge?.fontSize,
                        ),
                      ))),
                  SizedBox(
                      height: 40,
                      child: Center(
                          child: Text(
                        'Trimestral',
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.labelLarge?.fontSize,
                        ),
                      ))),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              height: 40,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: InkWell(
                          onTap: () => Get.to(const SelectServiceView()),
                          child: Row(
                            children: [
                              Text(
                                'Seleção de Empresas',
                                style: TextStyle(
                                  fontFamily: 'Montserrat-SemiBold',
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.fontSize,
                                ),
                              ),
                              const Spacer(),
                              const InkWell(child: Icon(Icons.chevron_right))
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 10),
                              child: Text(
                                'Configurações',
                                style: TextStyle(
                                  fontFamily: 'Montserrat-SemiBold',
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.fontSize,
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  'Modo Escuro',
                                  style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.fontSize),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Obx(
                                  () => Switch(
                                    value: baseController.isLightTheme,
                                    onChanged: (val) {
                                      baseController.setIsLightTheme(val);
                                      Get.changeThemeMode(
                                        baseController.isLightTheme
                                            ? ThemeMode.dark
                                            : ThemeMode.light,
                                      );
                                      baseController.saveThemeStatus();
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                    backgroundColor: Theme.of(context).colorScheme.outline,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () => {},
                child: const Text(
                  "Sair",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}
