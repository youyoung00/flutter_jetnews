import 'package:flutter/material.dart';

class Publications extends StatefulWidget {
  const Publications({Key? key}) : super(key: key);

  @override
  State<Publications> createState() => _PublicationsState();
}

class _PublicationsState extends State<Publications> {
  List<bool> btnStates = [false, false, false];

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
            itemCount: btnStates.length,
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
                          btnStates[i] = !btnStates[i];
                        });
                      },
                      child: _buildCheckButton(
                        btnState: btnStates[i],
                        currentIndex: i,
                      ),
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

  Widget _buildCheckButton({
    required bool btnState,
    required int currentIndex,
  }) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: btnState ? Colors.red : Colors.white,
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
          btnState ? Icons.check : Icons.add,
          color: btnState ? Colors.white : Colors.red,
        ),
      ],
    );
  }
}
