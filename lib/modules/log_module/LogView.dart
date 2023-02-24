import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/log_module/widget/LogDialog.dart';
import 'package:test_flutter/src/shared/themes/color_schemes.g.dart';

import '../../src/shared/widgets/BottomSheetLogFilter.dart';

class LogView extends StatelessWidget {
  const LogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () => Get.defaultDialog(title: "Upload", content : const LogDialog()),
                    child: const ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.factory),
                      ),
                      title: Text('Projetos', style: TextStyle(fontSize: 14),),
                      subtitle: Text('Foram adicionados 4 novos Projetos', style: TextStyle(fontSize: 12),),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightGreenAccent,
                      child: Icon(Icons.person),
                    ),
                    title: Text('Staffs', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foram adicionados 2 novos Funcionários', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: Icon(Icons.construction),
                    ),
                    title: Text('Material', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foi adicionado 1 novo Material', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Icon(Icons.factory),
                    ),
                    title: Text('Projetos', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foram adicionados 4 novos Projetos', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightGreenAccent,
                      child: Icon(Icons.person),
                    ),
                    title: Text('Staffs', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foram adicionados 2 novos Funcionários', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: Icon(Icons.construction),
                    ),
                    title: Text('Material', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foi adicionado 1 novo Material', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Icon(Icons.factory),
                    ),
                    title: Text('Projetos', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foram adicionados 4 novos Projetos', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightGreenAccent,
                      child: Icon(Icons.person),
                    ),
                    title: Text('Staffs', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foram adicionados 2 novos Funcionários', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: Icon(Icons.construction),
                    ),
                    title: Text('Material', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foi adicionado 1 novo Material', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Icon(Icons.factory),
                    ),
                    title: Text('Projetos', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foram adicionados 4 novos Projetos', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightGreenAccent,
                      child: Icon(Icons.person),
                    ),
                    title: Text('Staffs', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foram adicionados 2 novos Funcionários', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: Icon(Icons.construction),
                    ),
                    title: Text('Material', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foi adicionado 1 novo Material', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Icon(Icons.factory),
                    ),
                    title: Text('Projetos', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foram adicionados 4 novos Projetos', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightGreenAccent,
                      child: Icon(Icons.person),
                    ),
                    title: Text('Staffs', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foram adicionados 2 novos Funcionários', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: Icon(Icons.construction),
                    ),
                    title: Text('Material', style: TextStyle(fontSize: 14),),
                    subtitle: Text('Foi adicionado 1 novo Material', style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.more_vert),
                  )
                ],
              )),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 40),
              backgroundColor: lightColorScheme.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          onPressed: () => Get.bottomSheet(const BottomSheetLogFilter()),
          child: const Text(
            "Filtro",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
