import 'package:flutter/widgets.dart';
import 'package:flutter_jetnews/domain/repository/topic_api_repository.dart';

class InterestsViewModel with ChangeNotifier {
  final TopicApiRepository fakeInterests;
  List<bool> itemStateList = [];

  InterestsViewModel(this.fakeInterests);

  // void onClickEvent(ClickEvent event) {
  //   event.when(
  //     clickTopics: _loadTopics,
  //     clickPeoples: _loadPeople,
  //     clickPublications: _loadPublications,
  //   );
  // }

  // Future<List<Map<String, dynamic>>> _loadTopics() async {
  //   List<Map<String, dynamic>> topic = await fakeInterests.topic();
  //   notifyListeners();
  //   return topic;
  // }
  //
  // Future<List<String>> _loadPeople() async {
  //   List<String> people = await fakeInterests.people();
  //   notifyListeners();
  //   return people;
  // }
  //
  // Future<List<String>> _loadPublications() async {
  //   List<String> publications = await fakeInterests.publications();
  //   notifyListeners();
  //   return publications;
  // }
}
