import 'package:flutter/material.dart';
import 'package:mightytips/domain/factories/screen_factory.dart';

abstract class MainNavigationRoutesName {
  static const index = '/';
  static const bookmakers = '/bookmakers';
  static const bookmaker = '/bookmakers/bookmaker';
  static const predictions = '/predictions';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRoutesName.index: (_) => _screenFactory.makeIndex(),
    MainNavigationRoutesName.bookmakers: (_) => _screenFactory.makeBookmakers(),
    MainNavigationRoutesName.bookmaker: (_) => _screenFactory.makeBookmaker(),
    MainNavigationRoutesName.predictions: (_) => _screenFactory.makePredictions(),
  };

  // Route<Object> onGenerateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case MainNavigationRoutesName.index:
  //       final arguments = settings.arguments;
  //       final menuActivePage = arguments is int ? arguments : 0;
  //       return MaterialPageRoute(
  //         builder: (_) => _screenFactory.makeIndex(menuActivePage),
  //       );
  //     case MainNavigationRoutesName.bookmaker:
  //       final arguments = settings.arguments;
  //       final menuActivePage = arguments is int ? arguments : 0;
  //       return MaterialPageRoute(
  //         builder: (_) => _screenFactory.makeBookmaker(menuActivePage),
  //       );
  //     default:
  //       const widget = Text('Navigation error!!!');
  //       return MaterialPageRoute(builder: (_) => widget);
  //   }
  // }
}