import 'package:flutter/material.dart';
import 'package:flutter_jetnews/presentation/home/main_news.dart';
import 'package:flutter_jetnews/ui/colors.dart';
import 'package:provider/provider.dart';

import 'di/provider_setup.dart';

void main() {
  runApp(
    MultiProvider(
      providers: globalProviders,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: mainRed,
            ),
        fontFamily: 'Montserrat',
      ),
      home: const MainNews(),
    );
  }
}
