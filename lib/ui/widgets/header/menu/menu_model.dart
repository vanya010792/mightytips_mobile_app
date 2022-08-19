import 'package:flutter/material.dart';
import 'package:mightytips/ui/navigation/main_navigation.dart';

class MenuModel {
  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).pushNamed(MainNavigationRoutesName.index);
        break;
      case 1:
        Navigator.of(context).pushNamed(MainNavigationRoutesName.bookmakers);
        break;
      case 2:
        Navigator.of(context).pushNamed(MainNavigationRoutesName.predictions);
        break;
    }
  }
}