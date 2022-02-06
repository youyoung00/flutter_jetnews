import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_jetnews/data/data_source/result.dart';
import 'package:flutter_jetnews/domain/model/topic.dart';
import 'package:flutter_jetnews/domain/use_case/get_topics_use_case.dart';
import 'package:flutter_jetnews/presentation/interests/pages/topics/topics_state.dart';
import 'package:flutter_jetnews/presentation/interests/pages/topics/topics_ui_event.dart';

class TopicsViewModel with ChangeNotifier {
  final GetTopicsUseCase getTopicsUseCase;

  TopicsState _state = TopicsState([], false);

  TopicsState get state => _state;

  final _eventController = StreamController<TopicsUiEvent>();

  Stream<TopicsUiEvent> get eventStream => _eventController.stream;

  TopicsViewModel(this.getTopicsUseCase);

  Future<void> fetch() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    final Result<List<Topic>> result = await getTopicsUseCase();
    result.when(
      success: (topics) {
        _state = state.copyWith(topics: topics);
        notifyListeners();
      },
      error: (message) {
        _eventController.add(TopicsUiEvent.showSnackBar(message));
      },
    );
    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
