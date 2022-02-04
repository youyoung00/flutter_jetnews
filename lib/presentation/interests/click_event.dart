import 'package:freezed_annotation/freezed_annotation.dart';

part 'click_event.freezed.dart';

@freezed
abstract class ClickEvent with _$ClickEvent {
  const factory ClickEvent.clickTopics() = ClickTopics;
  const factory ClickEvent.clickPeoples() = ClickPeoples;
  const factory ClickEvent.clickPublications() = ClickPublications;
}
