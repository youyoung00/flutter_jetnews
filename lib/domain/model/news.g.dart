// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      id: json['id'] as String,
      imageId: json['imageId'] as int,
      imageThumbId: json['imageThumbId'] as int,
      metadata: json['metadata'] as List<dynamic>,
      publication: json['publication'] as List<dynamic>,
      paragraphs: (json['paragraphs'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      subtitle: json['subtitle'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'id': instance.id,
      'imageId': instance.imageId,
      'imageThumbId': instance.imageThumbId,
      'metadata': instance.metadata.toList(),
      'publication': instance.publication.toList(),
      'paragraphs': instance.paragraphs,
      'subtitle': instance.subtitle,
      'title': instance.title,
      'url': instance.url,
    };
