import 'dart:core';

class ArmstrongNumbers {
  isArmstrongNumber(String number) {
    BigInt result = BigInt.zero;
    int len = number.length;
    number.split('').forEach((char) {
      BigInt digit = BigInt.parse(char);
      result += digit.pow(len);
    });

    return result == BigInt.parse(number);
  }
}
