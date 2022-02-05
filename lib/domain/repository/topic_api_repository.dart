import 'package:flutter_jetnews/data/data_source/result.dart';
import 'package:flutter_jetnews/domain/model/topic.dart';

abstract class TopicApiRepository {
  Future<Result<List<Topic>>> fetch();
}
