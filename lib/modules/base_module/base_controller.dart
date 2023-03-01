import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_flutter/src/shared/utils/enums.dart';

class BaseController extends GetxController {

  @override
  void onInit(){
    super.onInit();
    getThemeStatus();
  }

  final RxInt _page = 0.obs;
  final RxBool _isLightTheme = false.obs;

  setPage(PagesEnum pagesEnum) => _page.value = pagesEnum.index;

  int get page => _page.value;
  bool get isLightTheme => _isLightTheme.value;
  setIsLightTheme(bool value) => _isLightTheme.value = value;

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  saveThemeStatus() async {
    SharedPreferences pref = await _prefs;
    pref.setBool('theme', _isLightTheme.value);
  }

  getThemeStatus() async {
    var isLight = _prefs.then((SharedPreferences prefs) {
      return prefs.getBool('theme') ?? true;
    }).obs;
    _isLightTheme.value = (await isLight.value)!;
    Get.changeThemeMode(_isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
  }
}
