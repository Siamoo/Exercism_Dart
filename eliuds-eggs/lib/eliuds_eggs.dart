class EggCounter {
  count(int decimal) {
    String binary = decimal.toRadixString(2);
    int eggs = binary.split('').where((char) => char == '1').length;

    return eggs;
  }
}