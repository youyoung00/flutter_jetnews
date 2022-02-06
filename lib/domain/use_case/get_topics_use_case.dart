import 'package:flutter_jetnews/data/data_source/result.dart';
import 'package:flutter_jetnews/domain/model/topic.dart';
import 'package:flutter_jetnews/domain/repository/topic_api_repository.dart';

class GetTopicsUseCase {
  final TopicApiRepository repository;

  GetTopicsUseCase(this.repository);

  Future<Result<List<Topic>>> call() async {
    final result = await repository.fetch();

    return result.when(success: (topics) {
      // print('RESULT 확인 : $result');
      return Result.success(topics);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
