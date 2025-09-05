

int score(String word) {
  int score = 0;
  for (int i = 0; i < word.length; i++) {
    scoreMap.forEach((x, y) {
      if (x.contains(word[i].toLowerCase())) {
        score += y;
      }
    });
  }
  return score;
}

Map<List<String>, int> scoreMap = {
  ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't']: 1,
  ['d', 'g']: 2,
  ['b', 'c', 'm', 'p']: 3,
  ['f', 'h', 'v', 'w', 'y']: 4,
  ['k']: 5,
  ['j', 'x']: 8,
  ['q', 'z']: 10
};
