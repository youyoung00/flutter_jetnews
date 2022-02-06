import 'package:flutter_jetnews/data/data_source/result.dart';
import 'package:flutter_jetnews/data/data_source/topic_api.dart';
import 'package:flutter_jetnews/domain/model/topic.dart';
import 'package:flutter_jetnews/domain/repository/topic_api_repository.dart';

class TopicApiRepositoryImpl implements TopicApiRepository {
  TopicApi api;

  TopicApiRepositoryImpl(this.api);

  @override
  Future<Result<List<Topic>>> fetch() async {
    final Result<Iterable> result = await api.fetch();

    return result.when(
      success: (iterable) {
        final topicList = iterable.map((e) => Topic.fromJson(e)).toList();

        return Result.success(topicList);
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
