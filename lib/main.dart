import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/base_module/base_controller.dart';
import 'package:test_flutter/modules/base_module/base_view.dart';
import 'package:test_flutter/modules/charts_module/charts_controller.dart';
import 'package:test_flutter/modules/home_module/home_controller.dart';
import 'package:test_flutter/modules/service_module/service_controller.dart';
import 'package:test_flutter/src/shared/themes/color_schemes.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(BaseController());
  Get.put(HomeController());
  Get.put(ChartsController());
  Get.put(ServiceController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      supportedLocales: const [Locale('pt', 'BR')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      fontFamily: 'Montserrat-Regular'),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
          fontFamily: 'Montserrat-Regular'),
      debugShowCheckedModeBanner: false,

      home: BaseView(),
    );
  }
}
