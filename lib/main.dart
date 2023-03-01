import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/modules/base_module/base_controller.dart';
import 'package:test_flutter/modules/base_module/base_view.dart';
import 'package:test_flutter/src/shared/themes/color_schemes.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(BaseController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,),
      debugShowCheckedModeBanner: false,
      home: BaseView(),
    );
  }
}
