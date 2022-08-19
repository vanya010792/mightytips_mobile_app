import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:mightytips/ui/widgets/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp
  // ]);
  const app = MyApp();
  runApp(app);
}
