import 'package:flutter/material.dart';

class Topics extends StatefulWidget {
  const Topics({Key? key}) : super(key: key);

  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  List<bool> btnStates = [false, false, false];

  // StreamSubscription? _subscription;

  // @override
  // void initState() {
  //   super.initState();
  //   Future.microtask(() {
  //     final viewModel = context.read<TopicsViewModel>();
  //     _subscription = viewModel.eventStream.listen((event) {
  //       event.when(showSnackBar: (message) {
  //         final snackBar = SnackBar(content: Text(message));
  //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //       });
  //     });
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   _subscription?.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // final viewModel = context.watch<TopicsViewModel>();
    // final state = viewModel.state;

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
        // state.isLoading
        //     ? const CircularProgressIndicator() :
        Expanded(
          child: ListView.builder(
            itemCount: btnStates.length,
            itemBuilder: (BuildContext context, int i) {
              return Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                        'assets/drawable-nodpi/placeholder_1_1.png'),
                    title: Text(
                      // state.topics[i].name,
                      'test',
                    ),
                    trailing: InkWell(
                      onTap: () {
                        // selected = state.topics[i].select;
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
