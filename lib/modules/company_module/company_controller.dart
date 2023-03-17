import 'package:get/get.dart';
import 'package:test_flutter/modules/company_module/company_model.dart';

class CompanyController extends GetxController {

  Rx<List<CompanyModel>> companies = Rx<List<CompanyModel>>([
    CompanyModel('serviceId','Saint Gobain', '031.5416.5640/00001',[2020, 2021]),
    CompanyModel('serviceId','NTT', '031.5416.5640/00001',[2019, 2020]),
    CompanyModel('serviceId','Bad Year', '031.5416.5640/00001',[2020, 2021]),
  ]);

}