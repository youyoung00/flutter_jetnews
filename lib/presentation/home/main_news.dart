import 'package:flutter/material.dart';
import 'package:flutter_jetnews/ui/colors.dart';

import 'components/book_mark_post.dart';
import 'components/drawer_widget.dart';
import 'components/top_banner.dart';

class MainNews extends StatefulWidget {
  const MainNews({Key? key}) : super(key: key);

  @override
  State<MainNews> createState() => _MainNewsState();
}

class _MainNewsState extends State<MainNews> {
  List<String> posts = [
    'assets/drawable-nodpi/post_1.png',
    'assets/drawable-nodpi/post_2.png',
    'assets/drawable-nodpi/post_3.png',
    'assets/drawable-nodpi/post_4.png',
    'assets/drawable-nodpi/post_5.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerWidget(),
      ),
      appBar: AppBar(
        title: const Text(
          'JetNews',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBanner(),
            const BookMarkPost(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Popular on Jetnews',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: PageView.builder(
                      itemCount: posts.length,
                      itemBuilder: (context, int i) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              posts[i],
                            ),
                            const Text(
                              'Locale changes and hte Android ViewModel antipattern',
                              style: TextStyle(fontSize: 20),
                            ),
                            const Text(
                              'Jose Alcerreca',
                              style: TextStyle(color: userNameColor),
                            ),
                            const Text(
                              'April 02 - 1 min read',
                              style: TextStyle(color: dateColor),
                            ),
                            const Divider(
                              height: 30,
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Image.asset(
                    'assets/drawable-nodpi/post_1_thumb.png',
                  ),
                  title: const Text(
                    'A Little Thing about Android Module Paths',
                  ),
                  subtitle: const Text("Pietro Maggi - 1 min read"),
                  trailing: IconButton(
                    icon: const Icon(Icons.more_horiz),
                    onPressed: () {},
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: Image.asset(
                    'assets/drawable-nodpi/post_2_thumb.png',
                  ),
                  title: const Text(
                    'Dagger in Kotlin: Gotchas and Optimizations',
                  ),
                  subtitle: const Text("Manuel Vivo - 3 min read"),
                  trailing: IconButton(
                    icon: const Icon(Icons.more_horiz),
                    onPressed: () {},
                  ),
                ),
                const Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
