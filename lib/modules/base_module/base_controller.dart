import 'package:get/state_manager.dart';
import 'package:test_flutter/src/shared/utils/enums.dart';

class BaseController extends GetxController {
  final RxInt _page = 0.obs;

  setPage(PagesEnum pagesEnum) => _page.value = pagesEnum.index;

  int get page => _page.value;
}
