import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DatePickerHelper extends GetxController {
  //Rxn<DateTime> myDate = Rxn<DateTime>();
  DatePickerHelper._();

  static final DatePickerHelper instance = DatePickerHelper._();

  Rx<DateTime> myDate = DateTime.now().obs;
  Rx<DateTime>? pickedDate = DateTime.now().obs;

  TextEditingController textController = TextEditingController();

  setDate(DateTime value) => pickedDate!.value = value;

  presentDatePicker(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        locale: const Locale('pt', 'BR'),
        context: context,
        initialDate: myDate.value,
        firstDate: DateTime(2020),
        lastDate: DateTime(2024));
    // Check if no date is selected
    if (selected == null) {
      return;
    }
    textController.text = showCorrectDate(selected);
    setDate(selected);
  }

  Future<DateTime> postDateFilter(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: myDate.value,
        firstDate: DateTime(2020),
        lastDate: DateTime(2024));
    // Check if no date is selected
    if (selected == null) {
      return DateTime.now();
    }
    return selected;
  }

  DateTime get selectedDate => pickedDate!.value;

  showDateNow() {
    return "${myDate.value.day}/${myDate.value.month}/${myDate.value.year}";
  }

  showCorrectDate(DateTime d) {
    return "${d.day}/${d.month}/${d.year}";
  }


  int getOnlyDate(DateTime finalDate) {
    return finalDate.difference(DateTime.now()).inDays.isNegative
        ? 0
        : finalDate.difference(DateTime.now()).inDays;
  }

  resetDate(){
    textController.clear();
  }
}
