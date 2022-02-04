import 'package:flutter/material.dart';
import 'package:flutter_jetnews/presentation/home/main_news.dart';
import 'package:flutter_jetnews/ui/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
      home: ChangeNotifierProvider(
        create: (_) {},
        child: const MainNews(),
      ),
    );
  }
}
