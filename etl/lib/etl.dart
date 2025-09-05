class Etl {
  Map<String, int> result = {};
  transform(Map<String, List<String>> legacy) {
    legacy.forEach((score, letters) {
      letters.forEach((char) {
        result[char.toLowerCase()] = int.parse(score);
      });
    });

    return result;
  }
}
