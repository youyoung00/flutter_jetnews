import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jetnews/presentation/interests/interests_screen.dart';
import 'package:flutter_jetnews/ui/colors.dart';

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 150,
              child: DrawerHeader(
                child: Image.network(
                    'https://raw.githubusercontent.com/android/compose-samples/main/readme/jetnews.png'),
                decoration: const BoxDecoration(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 40,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home,
                        color: subTextColor,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(color: subTextColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 40,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InterestsScreen()),
                    );
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.list_alt,
                        color: subTextColor,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Interests',
                        style: TextStyle(
                          color: subTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
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
            Container(
              padding: const EdgeInsets.all(16),
              height: 400,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Top stories for you',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          height: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/drawable-nodpi/post_4.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Locale changes and hte Android ViewModel antipattern',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Jose Alcerreca',
                          style: TextStyle(color: Color(0xFF616161)),
                        ),
                        Text(
                          'April 02 - 1 min read',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Divider(
                          height: 30,
                        )
                      ],
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
                  title: Text(
                    'A Little Thing about Android Module Paths',
                  ),
                  subtitle: Text("Pietro Maggi - 1 min read"),
                  trailing: IconButton(
                    icon: Icon(Icons.bookmark_border),
                    onPressed: () {},
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset(
                    'assets/drawable-nodpi/post_2_thumb.png',
                  ),
                  title: Text(
                    'Dagger in Kotlin: Gotchas and Optimizations',
                  ),
                  subtitle: Text("Manuel Vivo - 3 min read"),
                  trailing: IconButton(
                    icon: Icon(Icons.bookmark_border),
                    onPressed: () {},
                  ),
                ),
                Divider(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular on Jetnews',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 230,
                    child: PageView.builder(
                      itemCount: posts.length,
                      itemBuilder: (context, int i) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              posts[i],
                            ),
                            Text(
                              'Locale changes and hte Android ViewModel antipattern',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Jose Alcerreca',
                              style: TextStyle(color: Color(0xFF616161)),
                            ),
                            Text(
                              'April 02 - 1 min read',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Divider(
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
                  title: Text(
                    'A Little Thing about Android Module Paths',
                  ),
                  subtitle: Text("Pietro Maggi - 1 min read"),
                  trailing: IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {},
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset(
                    'assets/drawable-nodpi/post_2_thumb.png',
                  ),
                  title: Text(
                    'Dagger in Kotlin: Gotchas and Optimizations',
                  ),
                  subtitle: Text("Manuel Vivo - 3 min read"),
                  trailing: IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {},
                  ),
                ),
                Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
