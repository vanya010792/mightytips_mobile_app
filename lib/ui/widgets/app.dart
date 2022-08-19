import 'package:flutter/material.dart';
import 'package:mightytips/ui/navigation/main_navigation.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mighty Tips & Prediction',
      routes: mainNavigation.routes,
      // onGenerateRoute: mainNavigation.onGenerateRoute,
      initialRoute: MainNavigationRoutesName.index,
    );
  }
}
