import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_jetnews/presentation/interests/pages/topics/topics_view_model.dart';
import 'package:provider/provider.dart';

class Topics extends StatefulWidget {
  const Topics({Key? key}) : super(key: key);

  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  bool isBtnState = false;
  List<bool> btnStates = [false, false, false];

  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<TopicsViewModel>();
      // viewModel.fetch();
      _subscription = viewModel.eventStream.listen((event) {
        event.when(showSnackBar: (message) {
          final snackBar = SnackBar(content: Text(message));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      });
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TopicsViewModel>();
    final state = viewModel.state;

    return state.isLoading
        ? const Center(child: CircularProgressIndicator())
        : Column(
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                alignment: Alignment.centerLeft,
                height: 40,
                child: Text(
                  viewModel.state.topics[0].category,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 24,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: state.topics.length,
                  itemBuilder: (BuildContext context, int i) {
                    // isBtnState = state.topics[i].select;
                    return Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                              'assets/drawable-nodpi/placeholder_1_1.png'),
                          title: Text(
                            state.topics[i].name,
                            // 'test',
                          ),
                          trailing: InkWell(
                            onTap: () {
                              isBtnState = !isBtnState;
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color:
                                        isBtnState ? Colors.red : Colors.white,
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
                                  isBtnState ? Icons.check : Icons.add,
                                  color: isBtnState ? Colors.white : Colors.red,
                                ),
                              ],
                            ),
                            // _buildCheckButton(
                            //   btnState: isBtnState,
                            //   currentIndex: i,
                            // ),
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
