import 'package:get/get.dart';
import 'package:test_flutter/modules/service_module/service_model.dart';

class ServiceController extends GetxController {
  Rx<List<ServiceModel>> services = Rx<List<ServiceModel>>([
    ServiceModel('serviceId', 'Saint Gobain', 2021, 'url'),
    ServiceModel('serviceId', 'Saint Gobain', 2022, 'url'),
  ]);
}