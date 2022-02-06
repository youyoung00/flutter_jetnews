// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topics_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopicsState _$$_TopicsStateFromJson(Map<String, dynamic> json) =>
    _$_TopicsState(
      (json['topics'] as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['isLoading'] as bool,
    );

Map<String, dynamic> _$$_TopicsStateToJson(_$_TopicsState instance) =>
    <String, dynamic>{
      'topics': instance.topics,
      'isLoading': instance.isLoading,
    };
