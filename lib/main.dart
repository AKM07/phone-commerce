import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mobile_skeleton/utils/injector.dart';

import 'constants/Constants.dart';
import 'model/sqliteModel.dart';
import 'pages/ProductsPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await baseDio();
  final bool isInitialized = await AwesomeDBModel().initializeDB();
  if (isInitialized) {
    runApp(MyApp());
  } else {
    debugPrint("fail to init db");
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constants.appName,
      home: ProductsPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => ProductsPage(),
      },
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(color: Color(Constants.appMainColor), elevation: 0),
        primaryColor: Color(Constants.appMainColor),
        primaryColorDark: Color(Constants.appMainColor),
        backgroundColor: Constants.appBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
