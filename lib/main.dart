import 'package:flutter/material.dart';
import 'package:flutter_jetnews/presentation/home/main_news.dart';
import 'package:flutter_jetnews/presentation/interests/interests_view_model.dart';
import 'package:flutter_jetnews/ui/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<InterestsViewModel>(
            create: (_) => InterestsViewModel(),
            child: const MainNews(),
          ),
        ],
      ),
    );
  }
}
