import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/log_module/widget/LogDialog.dart';
import 'package:test_flutter/src/shared/themes/color_schemes.g.dart';

import '../../src/shared/widgets/BottomSheetLogFilter.dart';

class LogView extends StatelessWidget {
  const LogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              InkWell(
                onTap: () => Get.defaultDialog(
                    title: "Upload", content: const LogDialog()),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Icon(
                      Icons.factory,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  title: Text(
                    'Projetos',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleMedium?.fontSize),
                  ),
                  subtitle: Text(
                    'Foram adicionados 4 novos Projetos',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.labelLarge?.fontSize),
                  ),
                  trailing: const Icon(Icons.more_vert),
                ),
              ),
              InkWell(
                onTap: () => Get.defaultDialog(
                    title: "Upload", content: const LogDialog()),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Icon(
                      Icons.construction,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  title: Text(
                    'Materiais',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleMedium?.fontSize),
                  ),
                  subtitle: Text(
                    'Foram adicionados 4 novos Materiais',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.labelLarge?.fontSize),
                  ),
                  trailing: const Icon(Icons.more_vert),
                ),
              ),
            ],
          )),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 40),
              backgroundColor: lightColorScheme.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          onPressed: () => Get.bottomSheet(const BottomSheetLogFilter()),
          child: const Text(
            "Filtro",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
