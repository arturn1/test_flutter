import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:test_flutter/modules/log_module/logController.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LogController logController = Get.put(LogController());

    Map<String, double> dataMap = {
      "Funcionários": 6,
      "Materiais": 3,
      "Notas": 2,
    };

    return Stack(
      children: [
        Positioned(
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
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
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize:
                            Theme.of(context).textTheme.titleMedium?.fontSize,
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  Text(
                    "Artur Anderson",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.fontSize,
                        color: Theme.of(context).colorScheme.onPrimary),
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
                color: Theme.of(context).colorScheme.primaryContainer,
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
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                            fontWeight: FontWeight.bold,
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.fontSize),
                      ),
                      Text(
                        "\$ 15.000,92",
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.fontSize,
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
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
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Exclusão",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                    fontWeight: FontWeight.w500,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.fontSize),
                              ),
                              Text(
                                "\$ 320.490,57",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.fontSize,
                                ),
                              )
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
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Beneficio",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                    fontWeight: FontWeight.w500,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.fontSize),
                              ),
                              Text(
                                "\$ 150.000,92",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.fontSize),
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
            left: 24,
            right: 24,
            top: 280,
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: const BorderRadius.all(Radius.circular(15))
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text('Detalhamento 2022',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.fontSize),),
                          ),
                        ),
                        PieChart(
                          colorList: const [
                            Color(0xFF0709A6),
                            Color(0xFF82CFFF),
                            Color(0xFF454DD2),
                          ],
                          dataMap: dataMap,
                          chartRadius: MediaQuery.of(context).size.width / 1.7,
                          legendOptions: const LegendOptions(
                            legendPosition: LegendPosition.right,
                          ),
                          chartValuesOptions: const ChartValuesOptions(
                            showChartValuesInPercentage: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ))
/*
          Positioned.fill(
              top: 270,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Ultimas Atualizações",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.titleLarge?.fontSize),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index){
                          return Theme(
                            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor:
                                Theme.of(context).colorScheme.primary,
                                child: Icon(
                                  logController.getIcon(logController.logList.value[index].type),
                                  color: Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                              title: Text(
                                logController.getTitle(logController.logList.value[index].type),
                                style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.fontSize),
                              ),
                              subtitle: Text(
                                  logController.logList.value[index].description,
                                style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.fontSize),
                              ),
                            ),
                          );
                    },
                  )
                  )
                ],
              ))
*/
      ],
    );
  }
}
