import 'package:flutter_jetnews/domain/model/topic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topics_state.freezed.dart';
part 'topics_state.g.dart';

@freezed
class TopicsState with _$TopicsState {
  factory TopicsState(
    List<Topic> topics,
    bool isLoading,
  ) = _TopicsState;

  factory TopicsState.fromJson(Map<String, dynamic> json) =>
      _$TopicsStateFromJson(json);
}
