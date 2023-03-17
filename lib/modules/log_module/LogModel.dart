import 'package:flutter/material.dart';
import 'package:test_flutter/src/shared/utils/enums.dart';

class LogModel {
  final String serviceId;
  final String name;
  final String email;
  final String severity;
  final DateTime startDate;
  final DateTime endDate;
  final String description;
  final LogTypesEnum type;

  LogModel(this.serviceId, this.name, this.email, this.severity, this.startDate, this.endDate, this.description, this.type);

}


class LogChip{
  final IconData icon;
  final String name;

  LogChip(this.icon, this.name);
}