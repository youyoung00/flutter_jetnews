import 'package:flutter_jetnews/domain/repository/fake_interests_repository.dart';

class FakeInterestsRepositoryImpl implements FakeInterestsRepository {
  @override
  Future<List<String>> people() async {
    List<String> result = [
      "Kobalt Toral",
      "K'Kola Uvarek",
      "Kris Vriloc",
      "Grala Valdyr",
      "Kruel Valaxar",
      "L'Elij Venonn",
      "Kraag Solazarn",
      "Tava Targesh",
      "Kemarrin Muuda"
    ];

    return result;
  }

  @override
  Future<List<String>> publications() async {
    List<String> result = [
      "Kotlin Vibe",
      "Compose Mix",
      "Compose Breakdown",
      "Android Pursue",
      "Kotlin Watchman",
      "Jetpack Ark",
      "Composeshack",
      "Jetpack Point",
      "Compose Tribune"
    ];
    return result;
  }

  @override
  Future<List<Map<String, dynamic>>> topic() async {
    List<Map<String, dynamic>> result = [
      {
        "Android": [
          "Jetpack Compose",
          "Kotlin",
          "Jetpack",
        ],
        "Programming": [
          "Kotlin",
          "Declarative UIs",
          "Java",
          "Unidirectional Data Flow",
          "C++",
        ],
      },
    ];

    return result;
  }
}
