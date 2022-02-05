import 'package:flutter/material.dart';

class BookMarkPost extends StatelessWidget {
  const BookMarkPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const Divider(),
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
        const Divider(),
      ],
    );
  }
}
