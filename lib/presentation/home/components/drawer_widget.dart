import 'package:flutter/material.dart';
import 'package:flutter_jetnews/presentation/interests/interests_screen.dart';
import 'package:flutter_jetnews/ui/colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
