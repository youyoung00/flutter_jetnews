import 'package:flutter_jetnews/data/data_source/topic_api.dart';
import 'package:flutter_jetnews/data/repository/topic_api_repository_impl.dart';
import 'package:flutter_jetnews/domain/repository/topic_api_repository.dart';
import 'package:flutter_jetnews/domain/use_case/get_topics_use_case.dart';
import 'package:flutter_jetnews/presentation/interests/pages/topics/topics_view_model.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

// 1. Provider 전체
List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

// 2. 독립적인 객체. 다른 클래스에 의존하지 않는 Model.
List<SingleChildWidget> independentModels = [
  Provider<http.Client>(
    create: (context) => http.Client(),
  )
];

// 3. 2번 객체에 의존성 있는 객체. 2에 등록한 클래스에 의존하는 Model.
List<SingleChildWidget> dependentModels = [
  ProxyProvider<http.Client, TopicApi>(
    update: (context, client, _) => TopicApi(client),
  ),
  ProxyProvider<TopicApi, TopicApiRepository>(
    update: (context, api, _) => TopicApiRepositoryImpl(api),
  ),
  ProxyProvider<TopicApiRepository, GetTopicsUseCase>(
    update: (context, repository, _) => GetTopicsUseCase(repository),
  ),
];

// 4. ViewModels
// View 가 사용. 2, 3에 등록한 클래스를 사용할 수 있음.
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<TopicsViewModel>(
    create: (context) => TopicsViewModel(context.read<GetTopicsUseCase>()),
  ),
];
