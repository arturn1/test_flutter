import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/log_module/LogModel.dart';
import 'package:test_flutter/modules/log_module/logController.dart';
import 'package:test_flutter/src/shared/themes/color_schemes.g.dart';
import 'package:test_flutter/src/shared/widgets/custom_top_bar.dart';

import '../../../src/shared/utils/verify_data.dart';

class BottomSheetLogFilter extends StatefulWidget {
  BottomSheetLogFilter({Key? key}) : super(key: key);

  @override
  State<BottomSheetLogFilter> createState() => _BottomSheetLogFilterState();
}

class _BottomSheetLogFilterState extends State<BottomSheetLogFilter> {
  LogController logController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Theme.of(context).colorScheme.surfaceVariant,
        ),
        height: 350,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const CustomTopBar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
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
                    hintText: 'Pesquise por Nome ou e-mail',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0),
              child: TextFormField(
                onTap: () =>
                    DatePickerHelper.instance.presentDatePicker(context),
                controller: DatePickerHelper.instance.textController,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                      child: const Icon(Icons.cancel),
                      onTap: () =>
                          DatePickerHelper.instance.resetDate(),
                    ),
                    hintMaxLines: 1,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary)),
                    contentPadding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                    hintText: 'Pesquise pela data',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0),
              child: SizedBox(
                height: 100,
                width: Get.width,
                child: Wrap(children: logsChipsFilter(context).toList()),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                    backgroundColor: lightColorScheme.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () => {},
                child: const Text(
                  "Aplicar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Iterable<Widget> logsChipsFilter(BuildContext context) sync* {
    for (LogChip logChip in logController.logChip.value) {
      yield Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
        child: Obx(
          () => FilterChip(
              label: Text(logChip.name,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary)),
              selected:
                  logController.logChipsFilter.value.contains(logChip.name),
              selectedColor: Theme.of(context).colorScheme.inversePrimary,
              backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
              side: BorderSide(
                color: Theme.of(context).colorScheme.primary,
              ),
              onSelected: (bool selected) {
                setState(() {
                  if (selected) {
                    logController.add(logChip.name);
                  } else {
                    logController.remove(logChip.name);
                  }
                });
              }),
        ),
      );
    }
  }
}
