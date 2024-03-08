class Mission {
  final String missionName;
  final String? missionDetails;
  final Map<String, int> missionOptions;
  final int maxPoints;
  int _currentPoints;

  Mission({
    required this.missionName,
    required this.maxPoints,
    required this.missionOptions,
     this.missionDetails,
    required int currentPoints,
  }) : _currentPoints = currentPoints;

  int get currentPoints => _currentPoints;

  set currentPoints(int newPoints) {
    if (newPoints >= 0 && newPoints <= maxPoints) {
      _currentPoints = newPoints;
    } else {
      throw Exception('Invalid points value');
    }
  }
}