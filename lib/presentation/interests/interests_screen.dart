import 'package:flutter/material.dart';
import 'package:flutter_jetnews/presentation/interests/tab_menu/people.dart';
import 'package:flutter_jetnews/presentation/interests/tab_menu/publications.dart';
import 'package:flutter_jetnews/presentation/interests/tab_menu/topics.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({Key? key}) : super(key: key);

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final pageController = PageController();
  int currentIndex = 0;

  final List<Widget> _tabMenu = [
    const Topics(),
    const People(),
    const Publications(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interests"),
        bottom: TabBar(
          onTap: (currentIndex) {
            pageController.jumpToPage(currentIndex);
          },
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: 'Topics',
            ),
            Tab(
              text: 'People',
            ),
            Tab(
              text: 'Publications',
            ),
          ],
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (currentIndex) {
          _tabController.index = currentIndex;
        },
        itemCount: 3,
        itemBuilder: (BuildContext context, int i) {
          return _tabMenu[i];
        },
      ),
    );
  }
}
