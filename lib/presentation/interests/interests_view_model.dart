// import 'package:flutter/widgets.dart';
// import 'package:flutter_jetnews/data/data_source/result.dart';
// import 'package:flutter_jetnews/domain/model/topic_api.dart';
// import 'package:flutter_jetnews/domain/use_case/get_topics_use_case.dart';
//
// class InterestsViewModel with ChangeNotifier {
//   final GetTopicsUseCase getTopicsUseCase;
//
//   InterestsViewModel(this.getTopicsUseCase);
//
//   Future<Result<List<Topic>>> call() async {
//     final Result<List<Topic>> result = await getTopicsUseCase();
//
//     return result.when(
//       success: (topics) {
//         Result.success(topics);
//         notifyListeners();
//       },
//       error: (message) {
//         Result.error(message);
//       },
//     );
//   }
//
// // void onClickEvent(ClickEvent event) {
// //   event.when(
// //     clickTopics: _loadTopics,
// //     clickPeoples: _loadPeople,
// //     clickPublications: _loadPublications,
// //   );
// // }
//
// // Future<List<Map<String, dynamic>>> _loadTopics() async {
// //   List<Map<String, dynamic>> topic_api = await fakeInterests.topic_api();
// //   notifyListeners();
// //   return topic_api;
// // }
// //
// // Future<List<String>> _loadPeople() async {
// //   List<String> people = await fakeInterests.people();
// //   notifyListeners();
// //   return people;
// // }
// //
// // Future<List<String>> _loadPublications() async {
// //   List<String> publications_api = await fakeInterests.publications_api();
// //   notifyListeners();
// //   return publications_api;
// // }
// }
