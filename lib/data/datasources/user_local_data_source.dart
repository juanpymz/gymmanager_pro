/// Local data source for users (cache/local db placeholder).
class UserLocalDataSource {
  UserLocalDataSource();

  Future<void> cacheUser(Map<String, dynamic> user) async {
    // Placeholder: store in local DB or shared preferences
  }

  Future<Map<String, dynamic>?> getCachedUser(String id) async {
    // Placeholder
    return null;
  }
}
