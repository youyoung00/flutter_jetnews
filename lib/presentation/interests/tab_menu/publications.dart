import 'package:flutter/material.dart';

class Publications extends StatefulWidget {
  const Publications({Key? key}) : super(key: key);

  @override
  State<Publications> createState() => _PublicationsState();
}

class _PublicationsState extends State<Publications> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          alignment: Alignment.centerLeft,
          height: 40,
          child: const Text(
            'Title',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 24,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int i) {
              return Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                        'assets/drawable-nodpi/placeholder_1_1.png'),
                    title: Text('Jetpack Compose'),
                    trailing: InkWell(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      child: _buildCheckButton(),
                    ),
                  ),
                  const Divider(
                    indent: 72.0,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCheckButton() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: selected ? Colors.white : Colors.red,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
        ),
        Icon(
          selected ? Icons.add : Icons.check,
          color: selected ? Colors.red : Colors.white,
        ),
      ],
    );
  }
}
