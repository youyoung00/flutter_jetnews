import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class News with _$News {
  factory News({
    required String id,
    required int imageId,
    required int imageThumbId,
    required Iterable metadata,
    required Iterable publication,
    required List<Map<String, dynamic>> paragraphs,
    required String subtitle,
    required String title,
    required String url,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
