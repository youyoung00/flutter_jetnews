import 'package:freezed_annotation/freezed_annotation.dart';

part 'topics_ui_event.freezed.dart';

@freezed
abstract class TopicsUiEvent<T> with _$TopicsUiEvent<T> {
  const factory TopicsUiEvent.showSnackBar(String message) = ShowSnackBar;
}
