class AtbashCipher {
  encode(String text, [bool decode = false]) {
    const alphabet = "abcdefghijklmnopqrstuvwxyz";
    final reversedAlphabet = alphabet.split("").reversed.join("");
    text = text
        .replaceAll(RegExp(r'[ ,.]'), '')
        .toLowerCase()
        .split("")
        .map((char) => alphabet.contains(char)
            ? reversedAlphabet[alphabet.indexOf(char)]
            : char)
        .join("");

    if (decode) {
      return text;
    }

    for (int i = 5; i < text.length; i += 6) {
      text = text.substring(0, i) + " " + text.substring(i);
    }
    return text;
  }

  decode(String text) => encode(text, true);
}
