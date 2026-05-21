/// Simple cache service placeholder.
class CacheService {
  final Map<String, dynamic> _store = {};

  void write(String key, dynamic value) {
    _store[key] = value;
  }

  dynamic read(String key) => _store[key];

  void clear() => _store.clear();
}
