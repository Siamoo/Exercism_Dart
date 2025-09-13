class House {
  final List<String> subjects = [
    "the house that Jack built.",
    "the malt",
    "the rat",
    "the cat",
    "the dog",
    "the cow with the crumpled horn",
    "the maiden all forlorn",
    "the man all tattered and torn",
    "the priest all shaven and shorn",
    "the rooster that crowed in the morn",
    "the farmer sowing his corn",
    "the horse and the hound and the horn",
  ];

  final List<String> actions = [
    "", 
    "that lay in",
    "that ate",
    "that killed",
    "that worried",
    "that tossed",
    "that milked",
    "that kissed",
    "that married",
    "that woke",
    "that kept",
    "that belonged to",
  ];

  /// Builds one verse
  String verse(int n) {
    final buffer = StringBuffer("This is ${subjects[n]}");
    for (var i = n; i > 0; i--) {
      buffer.write(" ${actions[i]} ${subjects[i - 1]}");
    }
    return buffer.toString();
  }

  /// Builds multiple verses
  String recite(int startVerse, int endVerse) {
    final verses = <String>[];
    for (var i = startVerse; i <= endVerse; i++) {
      verses.add(verse(i - 1)); 
    }
    return verses.join("\n");
  }
}
