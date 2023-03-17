import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../LogModel.dart';

class LogDialog extends StatelessWidget {
  const LogDialog({Key? key, required this.logModel}) : super(key: key);

  final LogModel logModel;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Nome: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: Theme.of(context).textTheme.titleSmall?.fontSize),),
                  Text(logModel.name, style: TextStyle(fontSize: Theme.of(context).textTheme.titleSmall?.fontSize),),
                ],
              ),
              Row(
                children: [
                  const Text("Email:  ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(logModel.email),
                ],
              ),
              Row(
                children: [
                  const Text("Severidade: ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(logModel.severity),
                ],
              ),
              Row(
                children: [
                  const Text("Inicio: ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(logModel.startDate.toString().substring(0,22)),

                ],
              ),
              Row(
                children: [
                  const Text("Termino: ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(logModel.endDate.toString().substring(0, 22)),                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Descrição: ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Expanded(
                    child: Text(logModel.description,
                    maxLines: 2,),
                  )
                ],
              )
            ],
          ),
        ),
      );
  }
}
