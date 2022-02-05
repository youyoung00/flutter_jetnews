// import 'package:flutter_jetnews/data/repository/topic_api_repository_impl.dart';
// import 'package:flutter_jetnews/domain/repository/topic_api_repository.dart';
// import 'package:http/http.dart' as http;
// import 'package:provider/provider.dart';
// import 'package:provider/single_child_widget.dart';
//
// // 1. Provider 전체
// List<SingleChildWidget> globalProviders = [
//   ...independentModels,
//   ...dependentModels,
//   ...viewModels,
// ];
//
// // 2. 독립적인 객체. 다른 클래스에 의존하지 않는 Model.
// List<SingleChildWidget> independentModels = [
//   Provider<FakeInterestsRepositoryImpl>(
//     create: (context) => FakeInterestsRepositoryImpl(),
//   )
// ];
//
// // 3. 2번 객체에 의존성 있는 객체. 2에 등록한 클래스에 의존하는 Model.
// List<SingleChildWidget> dependentModels = [
//   ProxyProvider<FakeInterestsRepositoryImpl, FakeInterestsRepository>(
//     update: (context, repository, _) => FakeInterestsRepository(repository),
//   ),
//   ProxyProvider<PixabayApi, PhotoApiRepository>(
//     update: (context, api, _) => PhotoApiRepositoryImpl(api),
//   ),
//   ProxyProvider<PhotoApiRepository, GetPhotosUseCase>(
//     update: (context, repository, _) => GetPhotosUseCase(repository),
//   ),
// ];
//
// // 4. ViewModels
// // View 가 사용. 2, 3에 등록한 클래스를 사용할 수 있음.
// List<SingleChildWidget> viewModels = [
//   ChangeNotifierProvider<HomeViewModel>(
//     create: (context) => HomeViewModel(context.read<GetPhotosUseCase>()),
//   ),
// ];
