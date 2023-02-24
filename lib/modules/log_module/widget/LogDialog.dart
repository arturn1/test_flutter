import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogDialog extends StatelessWidget {
  const LogDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 150,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text("Nome: ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Artur Anderson Patricio"),
                ],
              ),
              Row(
                children: const [
                  Text("Email:  ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("artur.patricio@fi-group.com"),
                ],
              ),
              Row(
                children: const [
                  Text("Severidade: ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Baixa"),
                ],
              ),
              Row(
                children: const [
                  Text("Inicio: ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("10/12/2023 16:04"),

                ],
              ),
              Row(
                children: const [
                  Text("Termino: ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("10/12/2023 16:05"),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Descrição: ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Expanded(
                    child: Text("Upload Excel Planilha de Projetos.",
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
