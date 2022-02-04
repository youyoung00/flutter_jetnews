abstract class FakeInterestsRepository {
  Future<List<Map<String, dynamic>>> topic();
  Future<List<String>> people();
  Future<List<String>> publications();
}
