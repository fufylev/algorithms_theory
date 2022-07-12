import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../../../lessons/arrays/sieve_of_eratosthenes.dart';

void main() {
  test('Проверка алгоритма вывода всех простых чисел', () {
    // Arrange
    final length = 120;
    final simpleNumbers = [
      2,
      3,
      5,
      7,
      11,
      13,
      17,
      19,
      23,
      29,
      31,
      37,
      41,
      43,
      47,
      53,
      59,
      61,
      67,
      71,
      73,
      79,
      83,
      89,
      97,
      101,
      103,
      107,
      109,
      113
    ];

    // Act
    final receivedArray = sieveOfEratosthenes(length);

    // Assert
    expect(receivedArray, simpleNumbers);
  });
}
