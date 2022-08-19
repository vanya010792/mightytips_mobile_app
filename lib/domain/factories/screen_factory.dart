import 'package:flutter/material.dart';
import 'package:mightytips/ui/widgets/header/header_widget.dart';
import 'package:mightytips/ui/widgets/header/menu/menu_widget.dart';
import 'package:mightytips/ui/widgets/screen/bookmaker/bookmaker_widget.dart';
import 'package:mightytips/ui/widgets/screen/bookmakers/bookmakers_widget.dart';
import 'package:mightytips/ui/widgets/screen/index/index_model.dart';
import 'package:mightytips/ui/widgets/screen/index/index_widget.dart';
import 'package:mightytips/ui/widgets/screen/predictions/predictions_widget.dart';
import 'package:provider/provider.dart';

class ScreenFactory {
  Widget makeIndex() {
    return HeaderWidget(
      screen: ChangeNotifierProvider(
        create: (_) => IndexModel(),
        child: const IndexWidget(),
      ),
      menuActivePage: MenuWidgetIndex.main,
    );
  }

  Widget makeBookmakers() {
    return HeaderWidget(
      screen: const BookmakersWidget(),
      menuActivePage: MenuWidgetIndex.bookmakers,
    );
  }

  Widget makeBookmaker() {
    return HeaderWidget(
      screen: const BookmakerWidget(),
      menuActivePage: MenuWidgetIndex.bookmakers,
    );
  }

  Widget makePredictions() {
    return HeaderWidget(
      screen: const PredictionsWidget(),
      menuActivePage: MenuWidgetIndex.predictions,
    );
  }
}
