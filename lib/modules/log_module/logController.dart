import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/log_module/LogModel.dart';
import 'package:test_flutter/src/shared/utils/enums.dart';

class LogController extends GetxController {

  getIcon(LogTypesEnum logTypesEnum){
    switch(logTypesEnum){
      case LogTypesEnum.Material:
        return Icons.balance;
      case LogTypesEnum.Invoice:
        return Icons.inventory_outlined;
      case LogTypesEnum.Staff:
        return Icons.person;
      case LogTypesEnum.Project:
        return Icons.factory;

    }
  }

  getTitle(LogTypesEnum logTypesEnum){
    switch(logTypesEnum){
      case LogTypesEnum.Material:
        return 'Materiais';
      case LogTypesEnum.Invoice:
        return 'Notas';
      case LogTypesEnum.Staff:
        return 'Recursos Humanos';
      case LogTypesEnum.Project:
        return 'Projetos';

    }
  }


  final Rx<List<LogModel>> logList =   Rx<List<LogModel>>([
    LogModel("serviceId", "Artur","artur.patricio@fi-group.com", "Alta", DateTime.now(), DateTime.now(), "Foram Inseridos 3 novos Projetos",LogTypesEnum.Invoice),
    LogModel("serviceId", "Artur", "artur.patricio@fi-group.com", "Baixa", DateTime.now(), DateTime.now(), "description", LogTypesEnum.Project),
    LogModel("serviceId", "Artur", "artur.patricio@fi-group.com", "Alta", DateTime.now(), DateTime.now(), "description", LogTypesEnum.Staff),
    LogModel("serviceId", "Artur", "artur.patricio@fi-group.com", "Baixa", DateTime.now(), DateTime.now(), "description", LogTypesEnum.Staff),
    LogModel("serviceId", "Artur", "artur.patricio@fi-group.com", "Média", DateTime.now(), DateTime.now(), "description", LogTypesEnum.Invoice),
    LogModel("serviceId", "Artur", "artur.patricio@fi-group.com", "Média", DateTime.now(), DateTime.now(), "description", LogTypesEnum.Material),
    LogModel("serviceId", "Artur","artur.patricio@fi-group.com", "Média", DateTime.now(), DateTime.now(), "Foram Inseridos 3 novos Projetos",LogTypesEnum.Invoice),
    LogModel("serviceId", "Artur","artur.patricio@fi-group.com", "Média", DateTime.now(), DateTime.now(), "Foram Inseridos 3 novos Projetos",LogTypesEnum.Invoice),
    LogModel("serviceId", "Artur","artur.patricio@fi-group.com", "Baixa", DateTime.now(), DateTime.now(), "Foram Inseridos 3 novos Projetos",LogTypesEnum.Invoice),
    LogModel("serviceId", "Artur","artur.patricio@fi-group.com", "Alta", DateTime.now(), DateTime.now(), "Foram Inseridos 3 novos Projetos",LogTypesEnum.Invoice),
    LogModel("serviceId", "Artur", "artur.patricio@fi-group.com", "Alta", DateTime.now(), DateTime.now(), "description", LogTypesEnum.Material),
  ]);

  final Rx<List<String>> logChipsFilter = Rx<List<String>>([]);

  final Rx<List<LogChip>> logChip = Rx<List<LogChip>>([
    LogChip(Icons.balance, 'Material'),
    LogChip(Icons.inventory_outlined, 'Notas'),
    LogChip(Icons.factory, 'Projetos'),
    LogChip(Icons.person, 'RH'),
  ]);

  void add(String logChip) => logChipsFilter.value.add(logChip);

  void remove(String logChip) {
    logChipsFilter.value.removeWhere((String name) {
      return name == logChip;
    });
  }
}