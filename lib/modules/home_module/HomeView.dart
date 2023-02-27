import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/src/shared/themes/color_schemes.g.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: lightColorScheme.primary,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.elliptical(400, 50),
                      bottomRight: Radius.elliptical(400, 50))),
              height: 200,
            )),
        Positioned(
          left: 24,
          right: 24,
          top: 34,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Bom dia,",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: Theme.of(context).textTheme.titleSmall?.fontSize,
                    color: Colors.white),
                  ),
                  Text(
                    "Artur Anderson",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                    color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
            left: 24,
            right: 24,
            top: 110,
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: lightColorScheme.onPrimaryContainer,
              ),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dispêndio",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold,
                        fontSize: Theme.of(context).textTheme.titleMedium?.fontSize),
                      ),
                      Text(
                        "\$ 15.000,92",
                        style: TextStyle(
                            fontSize: Theme.of(context).textTheme.headlineMedium?.fontSize,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white.withOpacity(0.3),
                                child: const Icon(Icons.arrow_upward,
                                  color: Colors.white,
                                )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Exclusão",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: Theme.of(context).textTheme.titleMedium?.fontSize),
                              ),
                              Text(
                                "\$ 320.490,57",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
                              ),)
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white.withOpacity(0.3),
                                child: const Icon(Icons.arrow_downward,
                                  color: Colors.white,
                                )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Beneficio",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                fontSize: Theme.of(context).textTheme.titleMedium?.fontSize),
                              ),
                              Text(
                                "\$ 150.000,92",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                fontSize: Theme.of(context).textTheme.labelLarge?.fontSize),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )),
        Positioned(
            top: 270,
            child: SizedBox(
              height: 300,
              width: Get.width,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Ultimas Atualizações", style: TextStyle(fontWeight: FontWeight.bold, fontSize: Theme.of(context).textTheme
                    .titleLarge?.fontSize),),
                  ),
                  Expanded(
                      child: ListView(
                        children: [
                          ListTile(
                            leading: const CircleAvatar(
                                backgroundColor: Colors.lightBlue,
                                child: Icon(Icons.factory),
                            ),
                            title: Text('Projetos', style: TextStyle(fontSize: Theme.of(context).textTheme
                                .titleMedium?.fontSize),),
                            subtitle: Text('Foram adicionados 4 novos Projetos', style: TextStyle(fontSize: Theme.of(context).textTheme
                                .labelLarge?.fontSize),),
                            trailing: const Icon(Icons.more_vert),
                          ),
                          ListTile(
                            leading: const CircleAvatar(
                              backgroundColor: Colors.lightGreenAccent,
                              child: Icon(Icons.person),
                            ),
                            title: Text('Staffs', style: TextStyle(fontSize: Theme.of(context).textTheme
                                .titleMedium?.fontSize),),
                            subtitle: Text('Foram adicionados 2 novos Funcionários', style: TextStyle(fontSize: Theme.of(context).textTheme
                                .labelLarge?.fontSize),),
                            trailing: const Icon(Icons.more_vert),
                          ),
                          ListTile(
                            leading: const CircleAvatar(
                              backgroundColor: Colors.redAccent,
                              child: Icon(Icons.construction),
                            ),
                            title: Text('Material', style: TextStyle(fontSize: Theme.of(context).textTheme
                                .titleMedium?.fontSize),),
                            subtitle: Text('Foi adicionado 1 novo Material', style: TextStyle(fontSize: Theme.of(context).textTheme
                                .labelLarge?.fontSize),),
                            trailing: const Icon(Icons.more_vert),
                          )
                        ],
                      ))
                ],
              ),
            ))
      ],
    );
  }
}
