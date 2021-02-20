import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_app/routes.dart';

import 'constants.dart';
import 'screens/splash/splash_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: "Muli",
    appBarTheme: AppBarTheme(
        color: Colors.blue,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white, fontSize: 18),
        )),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    ),
  );
}
