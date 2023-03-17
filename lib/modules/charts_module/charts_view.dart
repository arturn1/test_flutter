import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/base_module/base_controller.dart';
import 'package:test_flutter/modules/charts_module/charts_controller.dart';

class ChartsView extends GetView<ChartsController> {
  const ChartsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final BaseController baseController = Get.find();

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: InkWell(
                onTap: () => controller.setExpandProject(),
                child: Obx(() => AnimatedContainer(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                    height: controller.sizeProject.value,
                    duration: const Duration(milliseconds: 500),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: SizedBox(
                            child: CircleAvatar(
                                backgroundColor: Theme.of(context).colorScheme.primary,
                                child: Icon(
                                  Icons.factory,
                                  color: Theme.of(context).colorScheme.onPrimary,
                                )),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Align(
                                      alignment: AlignmentDirectional.centerStart,
                                      child: Text(
                                        'Projetos',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat-SemiBold',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.fontSize,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Total de Projetos: ',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat-SemiBold',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.fontSize,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '7',
                                        style: TextStyle(
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.fontSize,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Dispêndio Total:',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat-SemiBold',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.fontSize,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        'R\$ 1.250.00',
                                        style: TextStyle(
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.fontSize,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                             controller.expandProject.value ?
                              const Icon(Icons.arrow_drop_up_outlined) :
                              const Icon(Icons.arrow_drop_down_outlined),
                              Visibility(
                                visible: !controller.expandProject.value,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: SizedBox(
                                      height: 38,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                                child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor: Theme.of(context)
                                                            .colorScheme
                                                            .primary,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(5))),
                                                    onPressed: () {},
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          margin: const EdgeInsets.only(
                                                              right: 10),
                                                          child: Icon(
                                                            FontAwesomeIcons.fileExcel,
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onPrimary,
                                                            size: 15,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Excel',
                                                          style: TextStyle(
                                                              color: Theme.of(context)
                                                                  .colorScheme
                                                                  .onPrimary),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                                child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor: Theme.of(context)
                                                            .colorScheme
                                                            .primary,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(5))),
                                                    onPressed: () {},
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          margin: const EdgeInsets.only(
                                                              right: 10),
                                                          child: Icon(
                                                            FontAwesomeIcons.filePdf,
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onPrimary,
                                                            size: 15,
                                                          ),
                                                        ),
                                                        Text(
                                                          'PDF',
                                                          style: TextStyle(
                                                              color: Theme.of(context)
                                                                  .colorScheme
                                                                  .onPrimary),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ),

                              Visibility(
                                visible: controller.expandProject.value,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: SizedBox(
                                      height: 30,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Projetos em analise: ',
                                              style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.fontSize,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              '4',
                                              style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.fontSize,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                              Visibility(
                                visible: controller.expandProject.value,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: SizedBox(
                                      height: 30,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Projetos Não Elegiveis:',
                                              style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.fontSize,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              '2',
                                              style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.fontSize,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                              Visibility(
                                visible: controller.expandProject.value,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: SizedBox(
                                      height: 30,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Projetos Elegiveis: ',
                                              style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.fontSize,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              '1',
                                              style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.fontSize,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                              Visibility(
                                visible: controller.expandProject.value,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: SizedBox(
                                      height: 38,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                                child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor: Theme.of(context)
                                                            .colorScheme
                                                            .primary,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(5))),
                                                    onPressed: () {},
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          margin: const EdgeInsets.only(
                                                              right: 10),
                                                          child: Icon(
                                                            FontAwesomeIcons.fileExcel,
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onPrimary,
                                                            size: 15,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Excel',
                                                          style: TextStyle(
                                                              color: Theme.of(context)
                                                                  .colorScheme
                                                                  .onPrimary),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                                child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor: Theme.of(context)
                                                            .colorScheme
                                                            .primary,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(5))),
                                                    onPressed: () {},
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          margin: const EdgeInsets.only(
                                                              right: 10),
                                                          child: Icon(
                                                            FontAwesomeIcons.filePdf,
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onPrimary,
                                                            size: 15,
                                                          ),
                                                        ),
                                                        Text(
                                                          'PDF',
                                                          style: TextStyle(
                                                              color: Theme.of(context)
                                                                  .colorScheme
                                                                  .onPrimary),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: InkWell(
              onTap: () => controller.setExpand(),
              child: Obx(() => AnimatedContainer(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                height: controller.size.value,
                duration: const Duration(milliseconds: 500),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                      child: SizedBox(
                        child: CircleAvatar(
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            child: Icon(
                              Icons.person,
                              color: Theme.of(context).colorScheme.onPrimary,
                            )),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Align(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(
                                    'Recursos Humanos',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat-SemiBold',
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.fontSize,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Total de Funcionarios: ',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat-SemiBold',
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.fontSize,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '7',
                                    style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.fontSize,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Dispêndio:',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat-SemiBold',
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.fontSize,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    'R\$ 100.250.00',
                                    style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.fontSize,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          controller.expand.value ?
                          const Icon(Icons.arrow_drop_up_outlined) :
                          const Icon(Icons.arrow_drop_down_outlined),
                          Visibility(
                            visible: !controller.expand.value,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: SizedBox(
                                  height: 38,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(5))),
                                                onPressed: () {},
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets.only(
                                                          right: 10),
                                                      child: Icon(
                                                        FontAwesomeIcons.fileExcel,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimary,
                                                        size: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Excel',
                                                      style: TextStyle(
                                                          color: Theme.of(context)
                                                              .colorScheme
                                                              .onPrimary),
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(5))),
                                                onPressed: () {},
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets.only(
                                                          right: 10),
                                                      child: Icon(
                                                        FontAwesomeIcons.filePdf,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimary,
                                                        size: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      'PDF',
                                                      style: TextStyle(
                                                          color: Theme.of(context)
                                                              .colorScheme
                                                              .onPrimary),
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),

                          Visibility(
                            visible: controller.expand.value,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: SizedBox(
                                  height: 30,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Mestres: ',
                                          style: TextStyle(
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.fontSize,
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.fontSize,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          Visibility(
                            visible: controller.expand.value,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: SizedBox(
                                  height: 30,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Exclusivos:',
                                          style: TextStyle(
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.fontSize,
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          '2',
                                          style: TextStyle(
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.fontSize,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          Visibility(
                            visible: controller.expand.value,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: SizedBox(
                                  height: 30,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Técnicos: ',
                                          style: TextStyle(
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.fontSize,
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.fontSize,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          Visibility(
                            visible: controller.expand.value,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: SizedBox(
                                  height: 38,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(5))),
                                                onPressed: () {},
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets.only(
                                                          right: 10),
                                                      child: Icon(
                                                        FontAwesomeIcons.fileExcel,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimary,
                                                        size: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Excel',
                                                      style: TextStyle(
                                                          color: Theme.of(context)
                                                              .colorScheme
                                                              .onPrimary),
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(5))),
                                                onPressed: () {},
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets.only(
                                                          right: 10),
                                                      child: Icon(
                                                        FontAwesomeIcons.filePdf,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimary,
                                                        size: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      'PDF',
                                                      style: TextStyle(
                                                          color: Theme.of(context)
                                                              .colorScheme
                                                              .onPrimary),
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
