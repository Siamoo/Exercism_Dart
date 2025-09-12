class HighScores {
  final List<int> scores;

  HighScores(this.scores);

  int latest() => scores.last;

  int personalBest() => scores.reduce((a, b) => a > b ? a : b);

  List<int> personalTopThree() {
    final sorted = List<int>.from(scores)
      ..sort((a, b) => b.compareTo(a)); // sort descending
    return sorted.take(3).toList();
  }
}
