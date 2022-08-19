import 'package:flutter/material.dart';
import 'package:mightytips/ui/navigation/main_navigation.dart';

class BookmakersWidget extends StatelessWidget {
  const BookmakersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Bookmakers Page'),
        onPressed: () => Navigator.of(context).pushNamed(MainNavigationRoutesName.bookmaker),
      ),
    );
  }
}
