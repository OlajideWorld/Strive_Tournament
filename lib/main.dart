import 'package:artelio/routes/routes.dart';
import 'package:artelio/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import 'HomeScreen/bindings/homebindings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Future.wait([
    loadFont('assets/fonts/akira_expanded/Akira Expanded Demo.otf'),
    loadFont('assets/fonts/sk-modernist/Sk-Modernist-Bold.otf'),
    loadFont('assets/fonts/sk-modernist/Sk-Modernist-Mono.otf'),
    loadFont('assets/fonts/sk-modernist/Sk-Modernist-Regular.otf'),
  ]).then((value) {
    runApp(const MyApp());
  });
}

Future<void> loadFont(String font) async {
  final fontLoader = FontLoader(font);
  await fontLoader.load();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      SizeConfig().init(constraints);
      return GetMaterialApp(
        builder: FlutterSmartDialog.init(),
        title: 'Artelio',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.deepOrange,
        ),
        debugShowCheckedModeBanner: false,
        initialBinding: HomeBinding(),
        getPages: Pages.routes,
        initialRoute: Pages.splashScreen,
      );
    });
  }
}
